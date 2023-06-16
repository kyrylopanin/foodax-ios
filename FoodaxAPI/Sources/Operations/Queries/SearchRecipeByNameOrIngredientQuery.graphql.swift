// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class SearchRecipeByNameOrIngredientQuery: GraphQLQuery {
  public static let operationName: String = "SearchRecipeByNameOrIngredient"
  public static let document: ApolloAPI.DocumentType = .notPersisted(
    definition: .init(
      #"""
      query SearchRecipeByNameOrIngredient($query: String) {
        searchRecipeByNameOrIngredient(query: $query) {
          __typename
          onPlan {
            __typename
            id
            ingredients {
              __typename
              name
            }
            mainImage
            ingredientsCount
            name
            totalTime
          }
        }
      }
      """#
    ))

  public var query: GraphQLNullable<String>

  public init(query: GraphQLNullable<String>) {
    self.query = query
  }

  public var __variables: Variables? { ["query": query] }

  public struct Data: FoodaxAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { FoodaxAPI.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("searchRecipeByNameOrIngredient", SearchRecipeByNameOrIngredient?.self, arguments: ["query": .variable("query")]),
    ] }

    public var searchRecipeByNameOrIngredient: SearchRecipeByNameOrIngredient? { __data["searchRecipeByNameOrIngredient"] }

    /// SearchRecipeByNameOrIngredient
    ///
    /// Parent Type: `RecipeSearchResult`
    public struct SearchRecipeByNameOrIngredient: FoodaxAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { FoodaxAPI.Objects.RecipeSearchResult }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("onPlan", [OnPlan?]?.self),
      ] }

      public var onPlan: [OnPlan?]? { __data["onPlan"] }

      /// SearchRecipeByNameOrIngredient.OnPlan
      ///
      /// Parent Type: `Recipe`
      public struct OnPlan: FoodaxAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { FoodaxAPI.Objects.Recipe }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("id", FoodaxAPI.ID.self),
          .field("ingredients", [Ingredient?]?.self),
          .field("mainImage", String?.self),
          .field("ingredientsCount", Int?.self),
          .field("name", String?.self),
          .field("totalTime", String?.self),
        ] }

        public var id: FoodaxAPI.ID { __data["id"] }
        public var ingredients: [Ingredient?]? { __data["ingredients"] }
        public var mainImage: String? { __data["mainImage"] }
        public var ingredientsCount: Int? { __data["ingredientsCount"] }
        public var name: String? { __data["name"] }
        public var totalTime: String? { __data["totalTime"] }

        /// SearchRecipeByNameOrIngredient.OnPlan.Ingredient
        ///
        /// Parent Type: `Ingredient`
        public struct Ingredient: FoodaxAPI.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { FoodaxAPI.Objects.Ingredient }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("name", String?.self),
          ] }

          public var name: String? { __data["name"] }
        }
      }
    }
  }
}
