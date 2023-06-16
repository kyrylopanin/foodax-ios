//
//  AuthorizationInterceptor.swift
//  Foodax
//
//  Created by Kyrylo Panin on 16.06.2023.
//

import Foundation
import Apollo
import ApolloAPI

class AuthorizationInterceptor: ApolloInterceptor {
    
    func interceptAsync<Operation>(
        chain: RequestChain,
        request: HTTPRequest<Operation>,
        response: HTTPResponse<Operation>?,
        completion: @escaping (Result<GraphQLResult<Operation.Data>, Error>) -> Void
    ) where Operation : GraphQLOperation {
        request.addHeader(name: "Authorization", value: "Token a4662747c41ee321dd793b303aa82bb84126c51e")
        chain.proceedAsync(request: request,
                            response: response,
                            completion: completion)
    }
    
}
