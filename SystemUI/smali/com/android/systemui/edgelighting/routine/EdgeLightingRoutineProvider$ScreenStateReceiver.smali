.class public final Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$ScreenStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;


# direct methods
.method private constructor <init>(Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$ScreenStateReceiver;->this$0:Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$ScreenStateReceiver;-><init>(Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$ScreenStateReceiver;->this$0:Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->mController:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    sget p1, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->$r8$clinit:I

    .line 8
    .line 9
    const-string p1, "EdgeLightingRoutineProvider"

    .line 10
    .line 11
    const-string/jumbo p2, "onReceive"

    .line 12
    .line 13
    .line 14
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$ScreenStateReceiver;->this$0:Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->mController:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->refreshBackground()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
