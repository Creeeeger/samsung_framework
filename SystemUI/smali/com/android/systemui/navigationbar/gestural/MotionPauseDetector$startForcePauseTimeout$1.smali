.class final Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector$startForcePauseTimeout$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $ev:Landroid/view/MotionEvent;

.field final synthetic this$0:Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector$startForcePauseTimeout$1;->this$0:Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector$startForcePauseTimeout$1;->$ev:Landroid/view/MotionEvent;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector$startForcePauseTimeout$1;->this$0:Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->tag:Ljava/lang/String;

    .line 4
    .line 5
    const-string/jumbo v1, "motion pause detected by force pause timeout"

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector$startForcePauseTimeout$1;->this$0:Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;

    .line 12
    .line 13
    const-string v0, "Force pause timeout"

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->updatePaused(Ljava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 20
    .line 21
    return-object p0
.end method
