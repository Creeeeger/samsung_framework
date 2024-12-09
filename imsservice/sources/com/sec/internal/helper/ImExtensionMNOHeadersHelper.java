package com.sec.internal.helper;

import com.sec.internal.constants.ims.cmstore.CloudMessageProviderContract;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class ImExtensionMNOHeadersHelper {
    private static final String VMTT_RESPONSE_HEADER = "P-Mav-Smpp-Vwsms-Servicetype";

    public static boolean isVM2TextMsg(Map<String, String> map) {
        return map != null && map.containsKey(VMTT_RESPONSE_HEADER) && Boolean.parseBoolean(map.get(VMTT_RESPONSE_HEADER));
    }

    public static Map<String, String> addVM2TextHeaders() {
        return new HashMap<String, String>() { // from class: com.sec.internal.helper.ImExtensionMNOHeadersHelper.1
            {
                put(ImExtensionMNOHeadersHelper.VMTT_RESPONSE_HEADER, CloudMessageProviderContract.JsonData.TRUE);
            }
        };
    }
}
