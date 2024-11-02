.class public final Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final context:Landroid/content/Context;

.field public grayAppearanceChanged:Z

.field public grayIconChangedCallback:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$3;

.field public homeIndicatorIconColor:I

.field public isGrayAppearance:Z

.field public isGrayIcon:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;->context:Landroid/content/Context;

    .line 5
    .line 6
    new-instance v0, Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper$SettingsObserver;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v1, "need_dark_statusbar"

    .line 16
    .line 17
    invoke-static {p1, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    goto :goto_0

    .line 22
    :catch_0
    const/4 p1, 0x1

    .line 23
    :goto_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;->homeIndicatorIconColor:I

    .line 24
    .line 25
    iget-object p0, v0, Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper$SettingsObserver;->context:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    iget-object p1, v0, Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper$SettingsObserver;->customStatusUri:Landroid/net/Uri;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-virtual {p0, p1, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
