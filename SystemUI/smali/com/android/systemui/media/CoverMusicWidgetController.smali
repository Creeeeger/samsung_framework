.class public final Lcom/android/systemui/media/CoverMusicWidgetController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final addVisibilityListenerConsumer:Ljava/util/function/Consumer;

.field public enabled:Z

.field public final lifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field public final mediaPauseTimerHandler:Landroid/os/Handler;

.field public final observer:Lcom/android/systemui/media/CoverMusicWidgetController$observer$1;

.field public final onPlayerVisibilityListener$delegate:Lkotlin/Lazy;

.field public pauseTimerStartedTime:J

.field public playerVisible:Z

.field public final removeVisibilityListenerConsumer:Ljava/util/function/Consumer;

.field public final subScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

.field public final widgetDisableRunnable:Lcom/android/systemui/media/CoverMusicWidgetController$widgetDisableRunnable$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/media/CoverMusicWidgetController$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/media/CoverMusicWidgetController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Lcom/android/systemui/subscreen/SubScreenManager;Lcom/android/systemui/keyguard/WakefulnessLifecycle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/media/SecMediaHost$MediaPanelVisibilityListener;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/media/SecMediaHost$MediaPanelVisibilityListener;",
            ">;",
            "Lcom/android/systemui/subscreen/SubScreenManager;",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/media/CoverMusicWidgetController;->addVisibilityListenerConsumer:Ljava/util/function/Consumer;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/media/CoverMusicWidgetController;->removeVisibilityListenerConsumer:Ljava/util/function/Consumer;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/media/CoverMusicWidgetController;->subScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/media/CoverMusicWidgetController;->lifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 11
    .line 12
    new-instance p1, Landroid/os/Handler;

    .line 13
    .line 14
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/android/systemui/media/CoverMusicWidgetController;->mediaPauseTimerHandler:Landroid/os/Handler;

    .line 25
    .line 26
    new-instance p1, Lcom/android/systemui/media/CoverMusicWidgetController$widgetDisableRunnable$1;

    .line 27
    .line 28
    invoke-direct {p1, p0}, Lcom/android/systemui/media/CoverMusicWidgetController$widgetDisableRunnable$1;-><init>(Lcom/android/systemui/media/CoverMusicWidgetController;)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/android/systemui/media/CoverMusicWidgetController;->widgetDisableRunnable:Lcom/android/systemui/media/CoverMusicWidgetController$widgetDisableRunnable$1;

    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Lcom/android/systemui/media/CoverMusicWidgetController;->enabled:Z

    .line 35
    .line 36
    new-instance p1, Lcom/android/systemui/media/CoverMusicWidgetController$onPlayerVisibilityListener$2;

    .line 37
    .line 38
    invoke-direct {p1, p0}, Lcom/android/systemui/media/CoverMusicWidgetController$onPlayerVisibilityListener$2;-><init>(Lcom/android/systemui/media/CoverMusicWidgetController;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, Lcom/android/systemui/media/CoverMusicWidgetController;->onPlayerVisibilityListener$delegate:Lkotlin/Lazy;

    .line 46
    .line 47
    new-instance p1, Lcom/android/systemui/media/CoverMusicWidgetController$observer$1;

    .line 48
    .line 49
    invoke-direct {p1, p0}, Lcom/android/systemui/media/CoverMusicWidgetController$observer$1;-><init>(Lcom/android/systemui/media/CoverMusicWidgetController;)V

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Lcom/android/systemui/media/CoverMusicWidgetController;->observer:Lcom/android/systemui/media/CoverMusicWidgetController$observer$1;

    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public final enableWidget(Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/media/CoverMusicWidgetController;->enabled:Z

    .line 2
    .line 3
    const-string v1, "enabled: "

    .line 4
    .line 5
    const-string v2, ", enable : "

    .line 6
    .line 7
    const-string v3, "CoverMusicWidgetController"

    .line 8
    .line 9
    invoke-static {v1, v0, v2, p1, v3}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/android/systemui/media/CoverMusicWidgetController;->enabled:Z

    .line 13
    .line 14
    if-ne v0, p1, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/media/CoverMusicWidgetController;->enabled:Z

    .line 18
    .line 19
    new-instance v0, Landroid/os/Bundle;

    .line 20
    .line 21
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v1, "com.samsung.android.widgetProviderName"

    .line 25
    .line 26
    const-string v2, "MusicTile"

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v1, "SubScreenManager"

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/systemui/media/CoverMusicWidgetController;->subScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 38
    .line 39
    if-nez p1, :cond_1

    .line 40
    .line 41
    const-string p0, "enableTask() no plugin"

    .line 42
    .line 43
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v2, "enableTask() "

    .line 50
    .line 51
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 65
    .line 66
    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->enableTask(Landroid/os/Bundle;)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 71
    .line 72
    if-nez p1, :cond_3

    .line 73
    .line 74
    const-string p1, "disableTask() no plugin"

    .line 75
    .line 76
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string v2, "disableTask() "

    .line 83
    .line 84
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 98
    .line 99
    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->disableTask(Landroid/os/Bundle;)V

    .line 100
    .line 101
    .line 102
    :goto_0
    new-instance p1, Landroid/os/Bundle;

    .line 103
    .line 104
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 105
    .line 106
    .line 107
    const-string v0, "com.samsung.android.widgetComponentName"

    .line 108
    .line 109
    const-string v2, "com.samsung.android.app.aodservice/MusicTile"

    .line 110
    .line 111
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    const-string/jumbo v0, "visible"

    .line 115
    .line 116
    .line 117
    const/4 v2, 0x0

    .line 118
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 119
    .line 120
    .line 121
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 122
    .line 123
    if-nez p0, :cond_4

    .line 124
    .line 125
    const-string/jumbo p0, "updateCapsule() no plugin"

    .line 126
    .line 127
    .line 128
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_4
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->updateCapsule(Landroid/os/Bundle;)V

    .line 133
    .line 134
    .line 135
    :goto_1
    return-void
.end method
