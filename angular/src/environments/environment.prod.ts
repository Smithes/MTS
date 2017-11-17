import { BackendType } from '../app/config';

export const environment: {production: boolean, backendType: BackendType, restPathRoot: string, restServiceRoot: string} = {
  production: true,
  backendType: BackendType.REST,
  restPathRoot: 'http://de-muc-mythai:9090/mythaistar/',
  restServiceRoot: 'http://de-muc-mythai:9090/mythaistar/services/rest/',
};
