package com.airbnb.lottie.network;

import android.content.Context;
import com.airbnb.lottie.LottieCompositionFactory;
import com.airbnb.lottie.LottieResult;
import com.airbnb.lottie.utils.Logger;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.zip.ZipInputStream;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class NetworkFetcher {
    public final LottieNetworkFetcher fetcher;
    public final NetworkCache networkCache;

    public NetworkFetcher(NetworkCache networkCache, LottieNetworkFetcher lottieNetworkFetcher) {
        this.networkCache = networkCache;
        this.fetcher = lottieNetworkFetcher;
    }

    public final LottieResult fromInputStream(Context context, String str, InputStream inputStream, String str2, String str3) {
        LottieResult fromZipStreamSync;
        LottieResult lottieResult;
        FileExtension fileExtension;
        if (str2 == null) {
            str2 = "application/json";
        }
        boolean contains = str2.contains("application/zip");
        NetworkCache networkCache = this.networkCache;
        if (!contains && !str2.contains("application/x-zip") && !str2.contains("application/x-zip-compressed") && !str.split("\\?")[0].endsWith(".lottie")) {
            Logger.debug();
            fileExtension = FileExtension.JSON;
            if (str3 != null && networkCache != null) {
                lottieResult = LottieCompositionFactory.fromJsonInputStreamSync(new FileInputStream(networkCache.writeTempCacheFile(str, inputStream, fileExtension).getAbsolutePath()), str);
            } else {
                lottieResult = LottieCompositionFactory.fromJsonInputStreamSync(inputStream, null);
            }
        } else {
            Logger.debug();
            FileExtension fileExtension2 = FileExtension.ZIP;
            if (str3 != null && networkCache != null) {
                fromZipStreamSync = LottieCompositionFactory.fromZipStreamSync(context, new ZipInputStream(new FileInputStream(networkCache.writeTempCacheFile(str, inputStream, fileExtension2))), str);
            } else {
                fromZipStreamSync = LottieCompositionFactory.fromZipStreamSync(context, new ZipInputStream(inputStream), null);
            }
            lottieResult = fromZipStreamSync;
            fileExtension = fileExtension2;
        }
        if (str3 != null && lottieResult.value != null && networkCache != null) {
            File file = new File(networkCache.parentDir(), NetworkCache.filenameForUrl(str, fileExtension, true));
            File file2 = new File(file.getAbsolutePath().replace(".temp", ""));
            boolean renameTo = file.renameTo(file2);
            file2.toString();
            Logger.debug();
            if (!renameTo) {
                Logger.warning("Unable to rename cache file " + file.getAbsolutePath() + " to " + file2.getAbsolutePath() + ".");
            }
        }
        return lottieResult;
    }
}
