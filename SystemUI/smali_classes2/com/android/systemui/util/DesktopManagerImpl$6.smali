.class public final Lcom/android/systemui/util/DesktopManagerImpl$6;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/util/DesktopManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/DesktopManagerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/util/DesktopManagerImpl$6;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "onDesktopModeStateChanged "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "DesktopManager"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl$6;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    .line 25
    .line 26
    sget-object v1, Lcom/android/systemui/util/DesktopManagerImpl;->DESKTOP_SETTINGS_URI:Landroid/net/Uri;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lcom/android/systemui/util/DesktopManagerImpl;->updateDesktopMode(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl$6;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/util/DesktopManagerImpl;->startSystemUIDesktopIfNeeded(Lcom/samsung/android/desktopmode/SemDesktopModeState;Z)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/systemui/util/DesktopManagerImpl$6;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getState()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    const/16 v3, 0x32

    .line 47
    .line 48
    if-ne v2, v3, :cond_1

    .line 49
    .line 50
    iget v2, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    .line 51
    .line 52
    iget-object v3, v0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopSettingsObserver:Lcom/android/systemui/util/DesktopManagerImpl$7;

    .line 53
    .line 54
    const/4 v4, 0x4

    .line 55
    iget-object v0, v0, Lcom/android/systemui/util/DesktopManagerImpl;->mContext:Landroid/content/Context;

    .line 56
    .line 57
    if-ne v2, v4, :cond_0

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    sget-object v2, Lcom/android/systemui/util/DesktopManagerImpl;->DESKTOP_SETTINGS_URI:Landroid/net/Uri;

    .line 64
    .line 65
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    const/4 v1, 0x2

    .line 70
    if-ne v2, v1, :cond_1

    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 77
    .line 78
    .line 79
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl$6;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    .line 80
    .line 81
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mCallbacks:Ljava/util/List;

    .line 82
    .line 83
    check-cast p0, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_2

    .line 94
    .line 95
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Lcom/android/systemui/util/DesktopManager$Callback;

    .line 100
    .line 101
    invoke-interface {v0, p1}, Lcom/android/systemui/util/DesktopManager$Callback;->onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_2
    return-void
.end method
