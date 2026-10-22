import 'dart:convert';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/data/dto/pokemon_data.dart';
import 'package:pokedex/data/dto/pokemon_evolution_chain_data.dart';
import 'package:pokedex/data/dto/pokemon_move_detail_data.dart';
import 'package:pokedex/data/dto/pokemon_species_data.dart';
import 'package:pokedex/data/dto/pokemon_type_detail_data.dart';
import 'package:http/http.dart' as http;

class PokedexApiService {
  final String baseUrl = 'https://pokeapi.co/api/v2/';
  final client = http.Client();
  Future<List<String>>? _pokemonNames;

  Future<PokemonData> getPokemonDetails(int idOrName) async {
    final uri = Uri.parse('$baseUrl/pokemon/$idOrName');
    return PokemonData.fromJson(await _getJson(uri));
  }

  Future<PokemonData> getPokemonDetailsByName(String name) async {
    final uri = Uri.parse('$baseUrl/pokemon/${Uri.encodeComponent(name)}');
    return PokemonData.fromJson(await _getJson(uri));
  }

  Future<List<String>> getPokemonNames() async {
    final request = _pokemonNames ??= _fetchPokemonNames();
    try {
      return await request;
    } catch (error, stackTrace) {
      if (identical(_pokemonNames, request)) {
        _pokemonNames = null;
      }
      Error.throwWithStackTrace(error, stackTrace);
    }
  }

  Future<List<String>> _fetchPokemonNames() async {
    final uri = Uri.parse('${baseUrl}pokemon?limit=2000');
    final jsonBody = await _getJson(uri);
    final results = jsonBody['results'] as List<dynamic>;

    return results
        .map((result) => (result as Map<String, dynamic>)['name'] as String)
        .toList();
  }

  Future<PokemonSpeciesData> getPokemonSpecies(int id) async {
    final uri = Uri.parse('$baseUrl/pokemon-species/$id');
    return PokemonSpeciesData.fromJson(await _getJson(uri));
  }

  Future<PokemonTypeDetailData> getPokemonTypeDetail(String type) async {
    final uri = Uri.parse('$baseUrl/type/$type');
    return PokemonTypeDetailData.fromJson(await _getJson(uri));
  }

  Future<PokemonMoveDetailData> getPokemonMoveDetail(String name) async {
    final uri = Uri.parse('$baseUrl/move/$name');
    return PokemonMoveDetailData.fromJson(await _getJson(uri));
  }

  Future<PokemonEvolutionChainData> getPokemonEvolutionChain(int id) async {
    final uri = Uri.parse('$baseUrl/evolution-chain/$id');
    return PokemonEvolutionChainData.fromJson(await _getJson(uri));
  }

  Future<Map<String, dynamic>> _getJson(Uri uri) async {
    final response = await client.get(uri);
    if (response.statusCode < 200 || response.statusCode >= 300) {
      throw http.ClientException(
        'PokéAPI request failed with status ${response.statusCode}.',
        uri,
      );
    }
    return jsonDecode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;
  }
}

final pokedexApiService = Provider((ref) {
  return PokedexApiService();
});
