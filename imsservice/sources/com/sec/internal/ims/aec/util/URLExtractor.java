package com.sec.internal.ims.aec.util;

import android.content.Context;
import android.net.Network;
import android.os.SemSystemProperties;
import android.text.TextUtils;
import com.sec.internal.constants.ims.aec.AECNamespace;
import com.sec.internal.constants.ims.config.ConfigConstants;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.interfaces.ims.core.ISimManager;
import com.sec.internal.log.AECLog;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.nio.charset.StandardCharsets;
import java.util.LinkedList;
import java.util.Queue;

/* loaded from: classes.dex */
public class URLExtractor {
    private static final String ENTITLEMENT_LAB_URL = "entitlementURL.txt";
    private static final String LOG_TAG = "URLExtractor";
    private static final boolean NO_SHIP_BUILD = ConfigConstants.VALUE.INFO_COMPLETED.equals(SemSystemProperties.get("ro.product_ship", ConfigConstants.VALUE.INFO_COMPLETED));

    public static synchronized String getUrl(Context context, int i, String str, String str2, String str3, boolean z) {
        synchronized (URLExtractor.class) {
            String labUrl = getLabUrl(context);
            if (!TextUtils.isEmpty(labUrl)) {
                return labUrl;
            }
            StringBuilder sb = new StringBuilder("https://");
            if (TextUtils.isEmpty(str)) {
                str = getDomain(i, z);
            }
            sb.append(str);
            if (!TextUtils.isEmpty(str2)) {
                sb.append(":");
                sb.append(str2);
            }
            if (!TextUtils.isEmpty(str3)) {
                sb.append("/");
                sb.append(str3);
            }
            return sb.toString();
        }
    }

    private static String getLabUrl(Context context) {
        if (NO_SHIP_BUILD) {
            File file = new File(context.getExternalFilesDir(null), ENTITLEMENT_LAB_URL);
            if (file.exists()) {
                try {
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file), StandardCharsets.UTF_8));
                    try {
                        String readLine = bufferedReader.readLine();
                        bufferedReader.close();
                        return readLine;
                    } finally {
                    }
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        return null;
    }

    private static String getDomain(int i, boolean z) {
        String simOperator;
        String substring;
        String substring2;
        ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(i);
        if (simManagerFromSimSlot == null) {
            return null;
        }
        if (z) {
            simOperator = simManagerFromSimSlot.getSimOperatorFromImpi();
        } else {
            simOperator = simManagerFromSimSlot.getSimOperator();
        }
        if (simOperator.length() == 5) {
            substring = simOperator.substring(0, 3);
            substring2 = "0" + simOperator.substring(3, 5);
        } else {
            if (simOperator.length() != 6) {
                return null;
            }
            substring = simOperator.substring(0, 3);
            substring2 = simOperator.substring(3, 6);
        }
        return String.format(AECNamespace.Template.DOMAIN, substring2, substring);
    }

    public static synchronized String getHostName(String str) {
        String replaceFirst;
        synchronized (URLExtractor.class) {
            replaceFirst = str.replaceFirst("https?://", "");
            if (replaceFirst.indexOf(47) > 0) {
                replaceFirst = replaceFirst.substring(0, replaceFirst.indexOf(47));
            }
        }
        return replaceFirst;
    }

    public static synchronized Queue<String> getIpAddress(int i, String str, Network network) {
        LinkedList linkedList;
        synchronized (URLExtractor.class) {
            linkedList = new LinkedList();
            InetAddress[] allByName = getAllByName(i, str, network);
            if (allByName != null && allByName.length != 1) {
                String replaceFirst = str.replaceFirst("https?://", "");
                String str2 = "";
                if (replaceFirst.contains(":")) {
                    str2 = replaceFirst.substring(replaceFirst.indexOf(58));
                } else if (replaceFirst.contains("/")) {
                    str2 = replaceFirst.substring(replaceFirst.indexOf(47));
                }
                for (InetAddress inetAddress : allByName) {
                    linkedList.offer(makeHttpUrl(inetAddress, str2).trim());
                }
                AECLog.i(LOG_TAG, "getIpAddress: " + linkedList.toString(), i);
            }
            linkedList.offer(str.trim());
        }
        return linkedList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.net.InetAddress[]] */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7 */
    protected static InetAddress[] getAllByName(int i, String str, Network network) {
        try {
            if (network == null) {
                i = InetAddress.getAllByName(getDomainName(str));
            } else {
                i = network.getAllByName(getDomainName(str));
            }
            return i;
        } catch (UnknownHostException e) {
            AECLog.e(LOG_TAG, "UnknownHostException: " + e.getMessage(), i);
            return null;
        }
    }

    protected static String getDomainName(String str) {
        String replaceFirst = str.replaceFirst("https?://", "");
        if (replaceFirst.indexOf(58) > 0) {
            return replaceFirst.substring(0, replaceFirst.indexOf(58));
        }
        return replaceFirst.indexOf(47) > 0 ? replaceFirst.substring(0, replaceFirst.indexOf(47)) : replaceFirst;
    }

    protected static String makeHttpUrl(InetAddress inetAddress, String str) {
        StringBuilder sb = new StringBuilder("https://");
        if (inetAddress instanceof Inet6Address) {
            sb.append("[");
            sb.append(inetAddress.getHostAddress());
            sb.append("]");
        } else {
            sb.append(inetAddress.getHostAddress());
        }
        if (!str.isEmpty()) {
            sb.append(str);
        }
        return sb.toString();
    }
}
