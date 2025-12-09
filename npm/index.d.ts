declare module '@apiverve/crongenerator' {
  export interface crongeneratorOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface crongeneratorResponse {
    status: string;
    error: string | null;
    data: CronExpressionGeneratorData;
    code?: number;
  }


  interface CronExpressionGeneratorData {
      schedule:    string;
      expression:  string;
      description: string;
  }

  export default class crongeneratorWrapper {
    constructor(options: crongeneratorOptions);

    execute(callback: (error: any, data: crongeneratorResponse | null) => void): Promise<crongeneratorResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: crongeneratorResponse | null) => void): Promise<crongeneratorResponse>;
    execute(query?: Record<string, any>): Promise<crongeneratorResponse>;
  }
}
