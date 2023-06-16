// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class RecipeByIdQuery: GraphQLQuery {
  public static let operationName: String = "RecipeById"
  public static let document: ApolloAPI.DocumentType = .notPersisted(
    definition: .init(
      #"""
      query RecipeById($recipeId: ID!) {
        recipe(id: $recipeId) {
          __typename
          id
          name
          ingredients {
            __typename
            name
          }
          instructions
          totalTime
          ingredientsCount
          serving
          mainImage
        }
      }
      """#
    ))

  public var recipeId: ID

  public init(recipeId: ID) {
    self.recipeId = recipeId
  }

  public var __variables: Variables? { ["recipeId": recipeId] }

  public struct Data: FoodaxAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { FoodaxAPI.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("recipe", Recipe?.self, arguments: ["id": .variable("recipeId")]),
    ] }

    public var recipe: Recipe? { __data["recipe"] }

    /// Recipe
    ///
    /// Parent Type: `Recipe`
    public struct Recipe: FoodaxAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { FoodaxAPI.Objects.Recipe }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("id", FoodaxAPI.ID.self),
        .field("name", String?.self),
        .field("ingredients", [Ingredient?]?.self),
        .field("instructions", [String?]?.self),
        .field("totalTime", String?.self),
        .field("ingredientsCount", Int?.self),
        .field("serving", Int?.self),
        .field("mainImage", String?.self),
      ] }

      public var id: FoodaxAPI.ID { __data["id"] }
      public var name: String? { __data["name"] }
      public var ingredients: [Ingredient?]? { __data["ingredients"] }
      public var instructions: [String?]? { __data["instructions"] }
      public var totalTime: String? { __data["totalTime"] }
      public var ingredientsCount: Int? { __data["ingredientsCount"] }
      public var serving: Int? { __data["serving"] }
      public var mainImage: String? { __data["mainImage"] }

      /// Recipe.Ingredient
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
