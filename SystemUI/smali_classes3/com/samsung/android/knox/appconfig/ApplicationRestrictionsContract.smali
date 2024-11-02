.class public final Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsContract;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsContract$Result;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResultCode(Ljava/lang/String;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/knox/appconfig/info/KeyInfo$KEY;->NONE:Lcom/samsung/android/knox/appconfig/info/KeyInfo$KEY;

    .line 2
    .line 3
    sget-object v0, Lcom/samsung/android/knox/appconfig/info/KeyInfo;->KEYMAP:Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/samsung/android/knox/appconfig/info/KeyInfo$KEY;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lcom/samsung/android/knox/EdmUtils;->getAPILevelForInternal()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p0}, Lcom/samsung/android/knox/appconfig/info/KeyInfo$KEY;->getVersion()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-lt v0, p0, :cond_0

    .line 22
    .line 23
    sget p0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsContract$Result;->ERROR_NONE:I

    .line 24
    .line 25
    return p0

    .line 26
    :cond_0
    sget p0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsContract$Result;->ERROR_INVALID_KEY:I

    .line 27
    .line 28
    return p0
.end method
