export enum BackendType {
  IN_MEMORY,
  REST,
  GRAPHQL,
}

export const environment: {production: boolean, backendType: BackendType, restPathRoot: string, restServiceRoot: string} = {
  production: false,
  backendType: BackendType.REST,
  restPathRoot: 'http://de-muc-mythai:9080/mythaistar/',
  restServiceRoot: 'http://de-muc-mythai:9080/mythaistar/services/rest/',
};
