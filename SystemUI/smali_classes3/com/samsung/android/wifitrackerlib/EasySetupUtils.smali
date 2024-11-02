.class public final Lcom/samsung/android/wifitrackerlib/EasySetupUtils;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "sem_wifi"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lcom/samsung/android/wifi/SemWifiManager;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/samsung/android/wifitrackerlib/EasySetupUtils;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 13
    .line 14
    return-void
.end method
