package com.airbnb.lottie.network;

import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieCompositionFactory;
import com.airbnb.lottie.LottieResult;
import com.airbnb.lottie.utils.Logger;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.ZipInputStream;

/* loaded from: classes.dex */
public final class NetworkFetcher {
    private final DefaultLottieNetworkFetcher fetcher;
    private final NetworkCache networkCache;

    public NetworkFetcher(NetworkCache networkCache, DefaultLottieNetworkFetcher defaultLottieNetworkFetcher) {
        this.networkCache = networkCache;
        this.fetcher = defaultLottieNetworkFetcher;
    }

    private LottieResult<LottieComposition> fromInputStream(String str, InputStream inputStream, String str2, String str3) throws IOException {
        FileExtension fileExtension;
        LottieResult<LottieComposition> fromZipStreamSync;
        if (str2 == null) {
            str2 = "application/json";
        }
        boolean contains = str2.contains("application/zip");
        NetworkCache networkCache = this.networkCache;
        if (contains || str.split("\\?")[0].endsWith(".lottie")) {
            Logger.debug();
            fileExtension = FileExtension.ZIP;
            fromZipStreamSync = str3 == null ? LottieCompositionFactory.fromZipStreamSync(new ZipInputStream(inputStream), null) : LottieCompositionFactory.fromZipStreamSync(new ZipInputStream(new FileInputStream(networkCache.writeTempCacheFile(str, inputStream, fileExtension))), str);
        } else {
            Logger.debug();
            fileExtension = FileExtension.JSON;
            fromZipStreamSync = str3 == null ? LottieCompositionFactory.fromJsonInputStreamSync(inputStream, null) : LottieCompositionFactory.fromJsonInputStreamSync(new FileInputStream(new File(networkCache.writeTempCacheFile(str, inputStream, fileExtension).getAbsolutePath())), str);
        }
        if (str3 != null && fromZipStreamSync.getValue() != null) {
            networkCache.renameTempFile(str, fileExtension);
        }
        return fromZipStreamSync;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x003d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.airbnb.lottie.LottieResult<com.airbnb.lottie.LottieComposition> fetchSync(java.lang.String r5, java.lang.String r6) {
        /*
            r4 = this;
            r0 = 0
            if (r6 != 0) goto L4
            goto L34
        L4:
            com.airbnb.lottie.network.NetworkCache r1 = r4.networkCache
            android.util.Pair r1 = r1.fetch(r5)
            if (r1 != 0) goto Ld
            goto L34
        Ld:
            java.lang.Object r2 = r1.first
            com.airbnb.lottie.network.FileExtension r2 = (com.airbnb.lottie.network.FileExtension) r2
            java.lang.Object r1 = r1.second
            java.io.InputStream r1 = (java.io.InputStream) r1
            com.airbnb.lottie.network.FileExtension r3 = com.airbnb.lottie.network.FileExtension.ZIP
            if (r2 != r3) goto L23
            java.util.zip.ZipInputStream r2 = new java.util.zip.ZipInputStream
            r2.<init>(r1)
            com.airbnb.lottie.LottieResult r1 = com.airbnb.lottie.LottieCompositionFactory.fromZipStreamSync(r2, r5)
            goto L27
        L23:
            com.airbnb.lottie.LottieResult r1 = com.airbnb.lottie.LottieCompositionFactory.fromJsonInputStreamSync(r1, r5)
        L27:
            java.lang.Object r2 = r1.getValue()
            if (r2 == 0) goto L34
            java.lang.Object r1 = r1.getValue()
            com.airbnb.lottie.LottieComposition r1 = (com.airbnb.lottie.LottieComposition) r1
            goto L35
        L34:
            r1 = r0
        L35:
            if (r1 == 0) goto L3d
            com.airbnb.lottie.LottieResult r4 = new com.airbnb.lottie.LottieResult
            r4.<init>(r1)
            return r4
        L3d:
            com.airbnb.lottie.utils.Logger.debug()
            java.lang.String r1 = "LottieFetchResult close failed "
            com.airbnb.lottie.utils.Logger.debug()
            com.airbnb.lottie.network.DefaultLottieNetworkFetcher r2 = r4.fetcher     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81
            r2.getClass()     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81
            com.airbnb.lottie.network.DefaultLottieFetchResult r0 = com.airbnb.lottie.network.DefaultLottieNetworkFetcher.fetchSync(r5)     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81
            boolean r2 = r0.isSuccessful()     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81
            if (r2 == 0) goto L68
            java.io.InputStream r2 = r0.bodyByteStream()     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81
            java.lang.String r3 = r0.contentType()     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81
            com.airbnb.lottie.LottieResult r4 = r4.fromInputStream(r5, r2, r3, r6)     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81
            java.lang.Object r5 = r4.getValue()     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81
            com.airbnb.lottie.utils.Logger.debug()     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81
            goto L76
        L68:
            com.airbnb.lottie.LottieResult r4 = new com.airbnb.lottie.LottieResult     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81
            java.lang.IllegalArgumentException r5 = new java.lang.IllegalArgumentException     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81
            java.lang.String r6 = r0.error()     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81
            r5.<init>(r6)     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81
            r4.<init>(r5)     // Catch: java.lang.Throwable -> L7f java.lang.Exception -> L81
        L76:
            r0.close()     // Catch: java.io.IOException -> L7a
            goto L92
        L7a:
            r5 = move-exception
            com.airbnb.lottie.utils.Logger.warning(r1, r5)
            goto L92
        L7f:
            r4 = move-exception
            goto L93
        L81:
            r4 = move-exception
            com.airbnb.lottie.LottieResult r5 = new com.airbnb.lottie.LottieResult     // Catch: java.lang.Throwable -> L7f
            r5.<init>(r4)     // Catch: java.lang.Throwable -> L7f
            if (r0 == 0) goto L91
            r0.close()     // Catch: java.io.IOException -> L8d
            goto L91
        L8d:
            r4 = move-exception
            com.airbnb.lottie.utils.Logger.warning(r1, r4)
        L91:
            r4 = r5
        L92:
            return r4
        L93:
            if (r0 == 0) goto L9d
            r0.close()     // Catch: java.io.IOException -> L99
            goto L9d
        L99:
            r5 = move-exception
            com.airbnb.lottie.utils.Logger.warning(r1, r5)
        L9d:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.network.NetworkFetcher.fetchSync(java.lang.String, java.lang.String):com.airbnb.lottie.LottieResult");
    }
}
