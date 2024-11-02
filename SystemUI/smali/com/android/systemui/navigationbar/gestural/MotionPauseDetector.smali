.class public final Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final directionY:Z

.field public hasEverBeenPaused:Z

.field public isPaused:Z

.field public final makePauseHarderToTrigger:Z

.field public final motionPauseListener:Lcom/android/systemui/navigationbar/gestural/MotionPauseListener;

.field public previousVelocity:Ljava/lang/Float;

.field public slowStartTime:J

.field public final speedFast:F

.field public final speedSlow:F

.field public final speedSomewhatFast:F

.field public final speedVerySlow:F

.field public final tag:Ljava/lang/String;

.field public final timer:Lcom/android/systemui/navigationbar/util/ScopeTimer;

.field public final velocityProvider:Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector$SystemVelocityProvider;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/android/systemui/navigationbar/gestural/MotionPauseListener;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p2, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->makePauseHarderToTrigger:Z

    .line 3
    iput-object p3, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->motionPauseListener:Lcom/android/systemui/navigationbar/gestural/MotionPauseListener;

    .line 4
    iput-boolean p4, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->directionY:Z

    const-string p2, "MotionPauseDetector"

    .line 5
    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->tag:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070873

    .line 7
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->speedVerySlow:F

    const p2, 0x7f070871

    .line 8
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->speedSlow:F

    const p2, 0x7f070872

    .line 9
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->speedSomewhatFast:F

    const p2, 0x7f070870

    .line 10
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->speedFast:F

    .line 11
    new-instance p1, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector$SystemVelocityProvider;

    invoke-direct {p1}, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector$SystemVelocityProvider;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->velocityProvider:Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector$SystemVelocityProvider;

    .line 12
    new-instance p1, Lcom/android/systemui/navigationbar/util/ScopeTimer;

    .line 13
    sget-object p2, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 14
    invoke-static {p2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/systemui/navigationbar/util/ScopeTimer;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->timer:Lcom/android/systemui/navigationbar/util/ScopeTimer;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;ZLcom/android/systemui/navigationbar/gestural/MotionPauseListener;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x1

    .line 15
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;-><init>(Landroid/content/Context;ZLcom/android/systemui/navigationbar/gestural/MotionPauseListener;Z)V

    return-void
.end method


# virtual methods
.method public final updatePaused(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->isPaused:Z

    .line 2
    .line 3
    if-eq v0, p2, :cond_4

    .line 4
    .line 5
    iput-boolean p2, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->isPaused:Z

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v1, "onMotionPauseChanged, paused="

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string p2, ", reason="

    .line 19
    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string/jumbo p2, "updatePaused, "

    .line 31
    .line 32
    .line 33
    invoke-static {p2, p1}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object p2, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->tag:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->hasEverBeenPaused:Z

    .line 43
    .line 44
    const/4 p2, 0x1

    .line 45
    if-nez p1, :cond_0

    .line 46
    .line 47
    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->isPaused:Z

    .line 48
    .line 49
    if-eqz p1, :cond_0

    .line 50
    .line 51
    move p1, p2

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const/4 p1, 0x0

    .line 54
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->isPaused:Z

    .line 55
    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    iput-boolean p2, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->hasEverBeenPaused:Z

    .line 59
    .line 60
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->motionPauseListener:Lcom/android/systemui/navigationbar/gestural/MotionPauseListener;

    .line 61
    .line 62
    if-eqz p1, :cond_3

    .line 63
    .line 64
    move-object p1, p0

    .line 65
    check-cast p1, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;

    .line 66
    .line 67
    iget-boolean v0, p1, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->gestureDetected:Z

    .line 68
    .line 69
    if-nez v0, :cond_2

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    iput-boolean p2, p1, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->isPaused:Z

    .line 73
    .line 74
    iget-object p2, p1, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->tag:Ljava/lang/String;

    .line 75
    .line 76
    const-string/jumbo v0, "onMotionPauseDetected, AccessibilityButtonLongClick"

    .line 77
    .line 78
    .line 79
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    iget-object p1, p1, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->navBarHelper:Lcom/android/systemui/navigationbar/NavBarHelper;

    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    new-instance p2, Landroid/content/Intent;

    .line 88
    .line 89
    const-string v0, "com.android.internal.intent.action.CHOOSE_ACCESSIBILITY_BUTTON"

    .line 90
    .line 91
    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    const v0, 0x10008000

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 98
    .line 99
    .line 100
    const-class v0, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;

    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    const-string v1, "android"

    .line 107
    .line 108
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    .line 110
    .line 111
    iget-object v0, p1, Lcom/android/systemui/navigationbar/NavBarHelper;->mContext:Landroid/content/Context;

    .line 112
    .line 113
    iget-object p1, p1, Lcom/android/systemui/navigationbar/NavBarHelper;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 114
    .line 115
    check-cast p1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 116
    .line 117
    invoke-virtual {p1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-virtual {v0, p2, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 122
    .line 123
    .line 124
    :cond_3
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    :cond_4
    return-void
.end method
