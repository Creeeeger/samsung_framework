.class public final Lcom/android/systemui/wallpaper/accessory/SmartCardController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final context:Landroid/content/Context;

.field public mainHandler:Lcom/android/systemui/wallpaper/accessory/SmartCardController$getMainHandler$1;

.field public final pluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

.field public final settingObserver:Lcom/android/systemui/wallpaper/accessory/SmartCardController$settingObserver$1;

.field public final updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/wallpaper/accessory/SmartCardController$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/wallpaper/accessory/SmartCardController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/pluginlock/PluginWallpaperManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->pluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 9
    .line 10
    const-string p1, "SmartCardController"

    .line 11
    .line 12
    const-string p2, "init"

    .line 13
    .line 14
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->updateState(Z)V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    new-instance p2, Lcom/android/systemui/wallpaper/accessory/SmartCardController$getMainHandler$1;

    .line 26
    .line 27
    invoke-direct {p2, p0, p1}, Lcom/android/systemui/wallpaper/accessory/SmartCardController$getMainHandler$1;-><init>(Lcom/android/systemui/wallpaper/accessory/SmartCardController;Landroid/os/Looper;)V

    .line 28
    .line 29
    .line 30
    iput-object p2, p0, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->mainHandler:Lcom/android/systemui/wallpaper/accessory/SmartCardController$getMainHandler$1;

    .line 31
    .line 32
    new-instance p1, Landroid/os/Handler;

    .line 33
    .line 34
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 39
    .line 40
    .line 41
    new-instance p2, Lcom/android/systemui/wallpaper/accessory/SmartCardController$settingObserver$1;

    .line 42
    .line 43
    invoke-direct {p2, p0, p1}, Lcom/android/systemui/wallpaper/accessory/SmartCardController$settingObserver$1;-><init>(Lcom/android/systemui/wallpaper/accessory/SmartCardController;Landroid/os/Handler;)V

    .line 44
    .line 45
    .line 46
    iput-object p2, p0, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->settingObserver:Lcom/android/systemui/wallpaper/accessory/SmartCardController$settingObserver$1;

    .line 47
    .line 48
    return-void
.end method

.method public static decodeHex(Ljava/lang/String;)[B
    .locals 5

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    const-string v2, "["

    .line 5
    .line 6
    invoke-static {p0, v2, v0}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const-string v2, "]"

    .line 11
    .line 12
    invoke-static {p0, v2, v0}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string v2, " "

    .line 17
    .line 18
    invoke-static {p0, v2, v0}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const/4 v0, 0x1

    .line 23
    new-array v0, v0, [Ljava/lang/String;

    .line 24
    .line 25
    const-string v2, ","

    .line 26
    .line 27
    aput-object v2, v0, v1

    .line 28
    .line 29
    const/4 v2, 0x6

    .line 30
    invoke-static {p0, v0, v1, v2}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    .line 35
    .line 36
    const/16 v2, 0xa

    .line 37
    .line 38
    invoke-static {p0, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 43
    .line 44
    .line 45
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_0

    .line 54
    .line 55
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    check-cast v3, Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v2}, Lkotlin/text/CharsKt__CharJVMKt;->checkRadix(I)V

    .line 62
    .line 63
    .line 64
    invoke-static {v3, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    int-to-byte v3, v3

    .line 69
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    new-array p0, p0, [B

    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    move v2, v1

    .line 88
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    if-eqz v3, :cond_1

    .line 93
    .line 94
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    check-cast v3, Ljava/lang/Number;

    .line 99
    .line 100
    invoke-virtual {v3}, Ljava/lang/Number;->byteValue()B

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    add-int/lit8 v4, v2, 0x1

    .line 105
    .line 106
    aput-byte v3, p0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .line 108
    move v2, v4

    .line 109
    goto :goto_1

    .line 110
    :catch_0
    new-array p0, v1, [B

    .line 111
    .line 112
    :cond_1
    return-object p0
.end method


# virtual methods
.method public final onDetached()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string/jumbo v2, "smart_card_wallpaper_uri"

    .line 8
    .line 9
    .line 10
    const/4 v3, -0x2

    .line 11
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v4, ""

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    move-object v1, v4

    .line 20
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    if-lez v5, :cond_1

    .line 25
    .line 26
    const/4 v5, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v5, 0x0

    .line 29
    :goto_0
    const-string v6, "SmartCardController"

    .line 30
    .line 31
    if-eqz v5, :cond_2

    .line 32
    .line 33
    const-string v5, "onDetached: "

    .line 34
    .line 35
    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    const-string v5, "com.samsung.dressroom.intent.action.SMART_CARD_DETACHED"

    .line 43
    .line 44
    invoke-virtual {p0, v5, v1}, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->smartCardServiceStart(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-static {p0, v2, v4, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    const-string p0, "onDetached, ignore"

    .line 56
    .line 57
    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    :goto_1
    return-void
.end method

.method public final sendUpdateState(JZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->mainHandler:Lcom/android/systemui/wallpaper/accessory/SmartCardController$getMainHandler$1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/android/systemui/wallpaper/accessory/SmartCardController$getMainHandler$1;

    .line 10
    .line 11
    invoke-direct {v1, p0, v0}, Lcom/android/systemui/wallpaper/accessory/SmartCardController$getMainHandler$1;-><init>(Lcom/android/systemui/wallpaper/accessory/SmartCardController;Landroid/os/Looper;)V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->mainHandler:Lcom/android/systemui/wallpaper/accessory/SmartCardController$getMainHandler$1;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->mainHandler:Lcom/android/systemui/wallpaper/accessory/SmartCardController$getMainHandler$1;

    .line 17
    .line 18
    const v1, 0x134b17e

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->mainHandler:Lcom/android/systemui/wallpaper/accessory/SmartCardController$getMainHandler$1;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->mainHandler:Lcom/android/systemui/wallpaper/accessory/SmartCardController$getMainHandler$1;

    .line 33
    .line 34
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    invoke-virtual {p0, v1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    invoke-virtual {p0, p3, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final smartCardServiceStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string/jumbo v0, "smartCardServiceStart, "

    .line 2
    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "SmartCardController"

    .line 9
    .line 10
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string p1, "com.samsung.android.app.dressroom"

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    const-string p1, "URI"

    .line 24
    .line 25
    invoke-static {p2}, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->decodeHex(Ljava/lang/String;)[B

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object p2, p0, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->mainHandler:Lcom/android/systemui/wallpaper/accessory/SmartCardController$getMainHandler$1;

    .line 34
    .line 35
    if-nez p2, :cond_0

    .line 36
    .line 37
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    new-instance v0, Lcom/android/systemui/wallpaper/accessory/SmartCardController$getMainHandler$1;

    .line 42
    .line 43
    invoke-direct {v0, p0, p2}, Lcom/android/systemui/wallpaper/accessory/SmartCardController$getMainHandler$1;-><init>(Lcom/android/systemui/wallpaper/accessory/SmartCardController;Landroid/os/Looper;)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->mainHandler:Lcom/android/systemui/wallpaper/accessory/SmartCardController$getMainHandler$1;

    .line 47
    .line 48
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->mainHandler:Lcom/android/systemui/wallpaper/accessory/SmartCardController$getMainHandler$1;

    .line 49
    .line 50
    new-instance v0, Lcom/android/systemui/wallpaper/accessory/SmartCardController$smartCardServiceStart$2$1;

    .line 51
    .line 52
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/wallpaper/accessory/SmartCardController$smartCardServiceStart$2$1;-><init>(Lcom/android/systemui/wallpaper/accessory/SmartCardController;Landroid/content/Intent;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception p0

    .line 60
    new-instance p1, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string/jumbo p2, "smartCardServiceStart, error: "

    .line 63
    .line 64
    .line 65
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    :goto_0
    return-void
.end method

.method public final updateState(Z)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isUserUnlocked()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "SmartCardController"

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string/jumbo p0, "updateState cancelled, user is not unlocked"

    .line 12
    .line 13
    .line 14
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->context:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const-string/jumbo v3, "user_setup_complete"

    .line 25
    .line 26
    .line 27
    const/4 v4, -0x2

    .line 28
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const/4 v3, 0x1

    .line 33
    const/4 v5, 0x0

    .line 34
    if-ne v2, v3, :cond_1

    .line 35
    .line 36
    move v2, v3

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move v2, v5

    .line 39
    :goto_0
    if-nez v2, :cond_2

    .line 40
    .line 41
    const-string/jumbo p0, "updateState cancelled, setup wizard is not completed"

    .line 42
    .line 43
    .line 44
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    const-string v6, "accessory_cover_uri"

    .line 53
    .line 54
    invoke-static {v2, v6, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    const-string/jumbo v6, "updateState: "

    .line 59
    .line 60
    .line 61
    invoke-static {v6, v2, v1}, Lcom/android/keyguard/KeyguardPluginControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    if-eqz p1, :cond_9

    .line 65
    .line 66
    if-eqz v2, :cond_8

    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-lez p1, :cond_3

    .line 73
    .line 74
    move p1, v3

    .line 75
    goto :goto_1

    .line 76
    :cond_3
    move p1, v5

    .line 77
    :goto_1
    if-eqz p1, :cond_8

    .line 78
    .line 79
    iget-object p1, p0, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->pluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 80
    .line 81
    check-cast p1, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isDynamicWallpaperEnabled()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-nez v0, :cond_6

    .line 88
    .line 89
    iget-object v0, p1, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 90
    .line 91
    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 92
    .line 93
    iget-object v0, v0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isDynamicLockEnabled()Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_4

    .line 100
    .line 101
    if-eqz v0, :cond_4

    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getScreenType()I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isServiceWallpaper(I)Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-eqz p1, :cond_4

    .line 112
    .line 113
    move p1, v3

    .line 114
    goto :goto_2

    .line 115
    :cond_4
    move p1, v5

    .line 116
    :goto_2
    if-eqz p1, :cond_5

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_5
    move p1, v5

    .line 120
    goto :goto_4

    .line 121
    :cond_6
    :goto_3
    move p1, v3

    .line 122
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    const-string v4, "onRemoveContent: "

    .line 125
    .line 126
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-lez v0, :cond_7

    .line 144
    .line 145
    goto :goto_5

    .line 146
    :cond_7
    move v3, v5

    .line 147
    :goto_5
    if-eqz v3, :cond_8

    .line 148
    .line 149
    if-eqz p1, :cond_8

    .line 150
    .line 151
    const-string p1, "onRemoveContent, start service: "

    .line 152
    .line 153
    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    const-string p1, "com.samsung.dressroom.intent.action.SMART_CARD_REMOVE_CONTENT"

    .line 161
    .line 162
    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->smartCardServiceStart(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    :cond_8
    return-void

    .line 166
    :cond_9
    if-eqz v2, :cond_12

    .line 167
    .line 168
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    if-lez p1, :cond_a

    .line 173
    .line 174
    move p1, v3

    .line 175
    goto :goto_6

    .line 176
    :cond_a
    move p1, v5

    .line 177
    :goto_6
    if-eqz p1, :cond_10

    .line 178
    .line 179
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    const-string/jumbo v6, "smart_card_wallpaper_uri"

    .line 184
    .line 185
    .line 186
    invoke-static {p1, v6, v4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    const-string v7, ""

    .line 191
    .line 192
    if-nez p1, :cond_b

    .line 193
    .line 194
    move-object p1, v7

    .line 195
    :cond_b
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v8

    .line 199
    if-eqz v8, :cond_c

    .line 200
    .line 201
    const-string p1, "onAttached, ignore same uri"

    .line 202
    .line 203
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    goto :goto_9

    .line 207
    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 208
    .line 209
    .line 210
    move-result v8

    .line 211
    if-lez v8, :cond_d

    .line 212
    .line 213
    move v8, v3

    .line 214
    goto :goto_7

    .line 215
    :cond_d
    move v8, v5

    .line 216
    :goto_7
    if-eqz v8, :cond_e

    .line 217
    .line 218
    const-string v8, "Saved uri is not empty "

    .line 219
    .line 220
    const-string v9, ", Let\'s detach first"

    .line 221
    .line 222
    invoke-static {v8, p1, v9, v1}, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    const-string v8, "com.samsung.dressroom.intent.action.SMART_CARD_DETACHED"

    .line 226
    .line 227
    invoke-virtual {p0, v8, p1}, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->smartCardServiceStart(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    invoke-static {p1, v6, v7, v4}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 235
    .line 236
    .line 237
    :cond_e
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 238
    .line 239
    .line 240
    move-result p1

    .line 241
    if-lez p1, :cond_f

    .line 242
    .line 243
    goto :goto_8

    .line 244
    :cond_f
    move v3, v5

    .line 245
    :goto_8
    if-eqz v3, :cond_11

    .line 246
    .line 247
    const-string p1, "onAttached, start service: "

    .line 248
    .line 249
    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    invoke-static {p1, v6, v2, v4}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 261
    .line 262
    .line 263
    const-string p1, "com.samsung.dressroom.intent.action.SMART_CARD_ATTACHED"

    .line 264
    .line 265
    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->smartCardServiceStart(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    goto :goto_9

    .line 269
    :cond_10
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->onDetached()V

    .line 270
    .line 271
    .line 272
    :cond_11
    :goto_9
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 273
    .line 274
    goto :goto_a

    .line 275
    :cond_12
    const/4 p1, 0x0

    .line 276
    :goto_a
    if-nez p1, :cond_13

    .line 277
    .line 278
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->onDetached()V

    .line 279
    .line 280
    .line 281
    :cond_13
    return-void
.end method
