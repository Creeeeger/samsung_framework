.class public final Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final Companion:Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$Companion;

.field public static final SEC_LIGHT_REVEAL_INTERPOLATOR:Landroid/view/animation/PathInterpolator;


# instance fields
.field public final biometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final context:Landroid/content/Context;

.field public isFolded:Z

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final lightRevealScrim:Lcom/android/systemui/statusbar/LightRevealScrim;

.field public final physicalDisplaySize:Landroid/graphics/Point;

.field public final pluginAODManagerLazy:Ldagger/Lazy;

.field public powerKeyYPos:I

.field public final screenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field public final screenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

.field public secCircleReveal:Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$SecCircleReveal;

.field public secRevealCenterX:F

.field public secRevealCenterY:F

.field public secRevealDoubleTapX:F

.field public secRevealDoubleTapY:F

.field public final semWindowManager$delegate:Lkotlin/Lazy;

.field public final wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->Companion:Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$Companion;

    .line 8
    .line 9
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 10
    .line 11
    const v1, 0x3eb33333    # 0.35f

    .line 12
    .line 13
    .line 14
    const/high16 v2, 0x3f800000    # 1.0f

    .line 15
    .line 16
    const v3, 0x3ee66666    # 0.45f

    .line 17
    .line 18
    .line 19
    const v4, 0x3e3851ec    # 0.18f

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->SEC_LIGHT_REVEAL_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 26
    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/statusbar/LightRevealScrim;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;",
            "Lcom/android/systemui/statusbar/phone/BiometricUnlockController;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            "Lcom/android/systemui/statusbar/LightRevealScrim;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->pluginAODManagerLazy:Ldagger/Lazy;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->screenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->biometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->screenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->lightRevealScrim:Lcom/android/systemui/statusbar/LightRevealScrim;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 21
    .line 22
    const/high16 p1, -0x40800000    # -1.0f

    .line 23
    .line 24
    iput p1, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->secRevealCenterX:F

    .line 25
    .line 26
    iput p1, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->secRevealCenterY:F

    .line 27
    .line 28
    iput p1, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->secRevealDoubleTapX:F

    .line 29
    .line 30
    iput p1, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->secRevealDoubleTapY:F

    .line 31
    .line 32
    new-instance p1, Landroid/graphics/Point;

    .line 33
    .line 34
    const/16 p2, 0x438

    .line 35
    .line 36
    const/16 p3, 0x924

    .line 37
    .line 38
    invoke-direct {p1, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->physicalDisplaySize:Landroid/graphics/Point;

    .line 42
    .line 43
    sget-object p1, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$semWindowManager$2;->INSTANCE:Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$semWindowManager$2;

    .line 44
    .line 45
    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iput-object p1, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->semWindowManager$delegate:Lkotlin/Lazy;

    .line 50
    .line 51
    return-void
.end method
