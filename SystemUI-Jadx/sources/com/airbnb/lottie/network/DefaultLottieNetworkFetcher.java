package com.airbnb.lottie.network;

import java.net.HttpURLConnection;
import java.net.URL;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class DefaultLottieNetworkFetcher implements LottieNetworkFetcher {
    public final DefaultLottieFetchResult fetchSync(String str) {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setRequestMethod("GET");
        httpURLConnection.connect();
        return new DefaultLottieFetchResult(httpURLConnection);
    }
}
