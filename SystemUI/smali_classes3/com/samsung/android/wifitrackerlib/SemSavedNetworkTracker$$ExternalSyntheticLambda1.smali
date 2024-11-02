.class public final synthetic Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    .line 2
    .line 3
    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method
