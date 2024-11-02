.class public final Lcom/android/systemui/wallpaper/accessory/SmartCardController$settingObserver$1;
.super Landroid/database/ContentObserver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallpaper/accessory/SmartCardController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/accessory/SmartCardController;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wallpaper/accessory/SmartCardController$settingObserver$1;->this$0:Lcom/android/systemui/wallpaper/accessory/SmartCardController;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v0, "settingObserver, uri: "

    .line 4
    .line 5
    .line 6
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v0, "SmartCardController"

    .line 17
    .line 18
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    const-string/jumbo p1, "user_setup_complete"

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    const/4 v0, 0x0

    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    const-wide/16 p1, 0x1388

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const-string p1, "dls_state"

    .line 39
    .line 40
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    iget-object p1, p0, Lcom/android/systemui/wallpaper/accessory/SmartCardController$settingObserver$1;->this$0:Lcom/android/systemui/wallpaper/accessory/SmartCardController;

    .line 51
    .line 52
    sget p2, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->$r8$clinit:I

    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 58
    .line 59
    const/4 v0, 0x1

    .line 60
    xor-int/2addr p1, v0

    .line 61
    if-nez p1, :cond_1

    .line 62
    .line 63
    return-void

    .line 64
    :cond_1
    const-wide/16 p1, 0x3e8

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    const-wide/16 p1, 0x0

    .line 68
    .line 69
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/accessory/SmartCardController$settingObserver$1;->this$0:Lcom/android/systemui/wallpaper/accessory/SmartCardController;

    .line 70
    .line 71
    sget v1, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->$r8$clinit:I

    .line 72
    .line 73
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->sendUpdateState(JZ)V

    .line 74
    .line 75
    .line 76
    return-void
.end method
