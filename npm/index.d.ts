declare module '@apiverve/crongenerator' {
  export interface crongeneratorOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface crongeneratorResponse {
    status: string;
    error: string | null;
    data: CronExpressionGeneratorData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface CronExpressionGeneratorData {
      schedule:    null | string;
      expression:  null | string;
      description: null | string;
  }

  export default class crongeneratorWrapper {
    constructor(options: crongeneratorOptions);

    execute(callback: (error: any, data: crongeneratorResponse | null) => void): Promise<crongeneratorResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: crongeneratorResponse | null) => void): Promise<crongeneratorResponse>;
    execute(query?: Record<string, any>): Promise<crongeneratorResponse>;
  }
}
