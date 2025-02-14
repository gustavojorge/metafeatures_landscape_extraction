#ifndef GLOBALS_H
#define GLOBALS_H

#include <vector>
#include <string>
#include "./metafeatures/landscapeElement.h"

extern int iLandscape;
extern int* countReval;
extern std::vector<std::vector<LandscapeElement>> *updated_mult_walk;
extern vector<string> column_names_decomposition;
extern string folder_name_adaptative_walk;
extern string folder_name_random_walk;
extern int walk_length;
extern float percent_neighbors;
extern std::string instance;
extern float angle;
extern float wind;
extern int num_zones;
extern vector<Turbine> fixd;
extern vector<int> turbines_per_zone;
extern std::vector<pair<double, double>> lambda_vector;
extern std::pair<double, double> global_z_point;
extern double maximal;
extern double minimal;
extern bool limitReached;
extern int limit;

#endif
