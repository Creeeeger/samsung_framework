.class public final Lcom/android/settingslib/wifi/WifiUtils$InternetIconInjector;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiUtils$InternetIconInjector;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getIcon(IZ)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    const-string v0, "Wi-Fi level is out of range! level:"

    .line 2
    .line 3
    const-string v1, "WifiUtils"

    .line 4
    .line 5
    if-gez p1, :cond_0

    .line 6
    .line 7
    invoke-static {v0, p1, v1}, Landroidx/core/widget/NestedScrollView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v2, 0x5

    .line 13
    if-lt p1, v2, :cond_1

    .line 14
    .line 15
    invoke-static {v0, p1, v1}, Landroidx/core/widget/NestedScrollView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x4

    .line 19
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 20
    .line 21
    sget-object p2, Lcom/android/settingslib/wifi/WifiUtils;->NO_INTERNET_WIFI_PIE:[I

    .line 22
    .line 23
    aget p1, p2, p1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_2
    sget-object p2, Lcom/android/settingslib/wifi/WifiUtils;->WIFI_PIE:[I

    .line 27
    .line 28
    aget p1, p2, p1

    .line 29
    .line 30
    :goto_1
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiUtils$InternetIconInjector;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method
