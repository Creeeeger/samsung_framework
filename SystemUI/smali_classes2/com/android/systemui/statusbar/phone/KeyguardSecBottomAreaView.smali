.class public final Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;
.super Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final binder:Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder;

.field public binding:Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$Binding;

.field public final bottomDozeArea$delegate:Lkotlin/Lazy;

.field public currentOrientation:I

.field public currentSimState:I

.field public final disclosureIndicationText$delegate:Lkotlin/Lazy;

.field public final displayMetrics$delegate:Lkotlin/Lazy;

.field public emergencyButton:Lcom/android/keyguard/EmergencyButton;

.field public final indicationText$delegate:Lkotlin/Lazy;

.field public isKeyguardVisible:Z

.field public isLastVisibility:I

.field public isPluginLockOverlayView:Z

.field public final leftShortcutArea$delegate:Lkotlin/Lazy;

.field public final leftView$delegate:Lkotlin/Lazy;

.field public final mDisplay$delegate:Lkotlin/Lazy;

.field public final rightShortcutArea$delegate:Lkotlin/Lazy;

.field public final rightView$delegate:Lkotlin/Lazy;

.field public setUsimTextAreaVisibility:Lkotlin/jvm/functions/Function0;

.field public showShortcutsIfPossible:Lkotlin/jvm/functions/Function0;

.field public updateLeftAffordanceIcon:Lkotlin/jvm/functions/Function0;

.field public updateRightAffordanceIcon:Lkotlin/jvm/functions/Function0;

.field public final upperFPIndication$delegate:Lkotlin/Lazy;

.field public usimCarrierText:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

.field public usimTextArea:Landroid/widget/LinearLayout;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 2
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 3
    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 6
    new-instance p2, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView$leftView$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView$leftView$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;)V

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->leftView$delegate:Lkotlin/Lazy;

    .line 7
    new-instance p2, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView$rightView$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView$rightView$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;)V

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->rightView$delegate:Lkotlin/Lazy;

    .line 8
    new-instance p2, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView$leftShortcutArea$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView$leftShortcutArea$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;)V

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->leftShortcutArea$delegate:Lkotlin/Lazy;

    .line 9
    new-instance p2, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView$rightShortcutArea$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView$rightShortcutArea$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;)V

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->rightShortcutArea$delegate:Lkotlin/Lazy;

    .line 10
    new-instance p2, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView$indicationText$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView$indicationText$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;)V

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->indicationText$delegate:Lkotlin/Lazy;

    .line 11
    new-instance p2, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView$disclosureIndicationText$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView$disclosureIndicationText$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;)V

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->disclosureIndicationText$delegate:Lkotlin/Lazy;

    .line 12
    new-instance p2, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView$bottomDozeArea$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView$bottomDozeArea$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;)V

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->bottomDozeArea$delegate:Lkotlin/Lazy;

    .line 13
    new-instance p2, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView$upperFPIndication$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView$upperFPIndication$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;)V

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->upperFPIndication$delegate:Lkotlin/Lazy;

    .line 14
    new-instance p2, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView$mDisplay$2;

    invoke-direct {p2, p1}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView$mDisplay$2;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->mDisplay$delegate:Lkotlin/Lazy;

    .line 15
    sget-object p1, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView$displayMetrics$2;->INSTANCE:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView$displayMetrics$2;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->displayMetrics$delegate:Lkotlin/Lazy;

    const/4 p1, 0x1

    .line 16
    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->currentSimState:I

    const/16 p1, 0x8

    .line 17
    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->isLastVisibility:I

    .line 18
    sget-object p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder;->INSTANCE:Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->binder:Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    .line 4
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static final synthetic access$getLeftView$s-672475773(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLeftView()Landroid/widget/ImageView;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getRightView$s-672475773(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getRightView()Landroid/widget/ImageView;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final getBinder()Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->binder:Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getBinding()Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$Binding;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->binding:Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$Binding;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    return-object p0
.end method

.method public final getLeftView()Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->leftView$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 8
    .line 9
    return-object p0
.end method

.method public final bridge synthetic getRightView()Landroid/widget/ImageView;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->getRightView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    move-result-object p0

    return-object p0
.end method

.method public final getRightView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->rightView$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    return-object p0
.end method

.method public final getUpdateLeftAffordanceIcon()Lkotlin/jvm/functions/Function0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->updateLeftAffordanceIcon:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    return-object p0
.end method

.method public final getUpdateRightAffordanceIcon()Lkotlin/jvm/functions/Function0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->updateRightAffordanceIcon:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    return-object p0
.end method

.method public final hasOverlappingRendering()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final init(Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/keyguard/SecLockIconViewController;Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$MessageDisplayer;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/plugins/ActivityStarter;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->binding:Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$Binding;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->getBinding()Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$Binding;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-interface {p2}, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$Binding;->destroy()V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder;->bind(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;)Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$1;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->binding:Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$Binding;

    .line 17
    .line 18
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->lockIconViewController:Lcom/android/keyguard/SecLockIconViewController;

    .line 19
    .line 20
    return-void
.end method

.method public final initEmergencyButton(Lcom/android/keyguard/EmergencyButtonController$Factory;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->emergencyButton:Lcom/android/keyguard/EmergencyButton;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p0}, Lcom/android/keyguard/EmergencyButtonController$Factory;->create(Lcom/android/keyguard/EmergencyButton;)Lcom/android/keyguard/EmergencyButtonController;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->init()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final isInEmergencyButtonArea(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->emergencyButton:Lcom/android/keyguard/EmergencyButton;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/Rect;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/Button;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    float-to-int p0, p0

    .line 21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    float-to-int p1, p1

    .line 26
    invoke-virtual {v0, p0, p1}, Landroid/graphics/Rect;->contains(II)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    return p0

    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    .line 1
    const-class v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastWakeAndUnlockMode()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->getBinding()Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$Binding;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$1;

    .line 20
    .line 21
    iget-object v1, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$1;->$configurationBasedDimensions:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 22
    .line 23
    check-cast v1, Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 24
    .line 25
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;

    .line 30
    .line 31
    invoke-static {v2}, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->copy$default(Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;)Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iget-object v0, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$1;->$view:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->updateShortcutPosition(Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->getBinding()Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$Binding;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$1;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$1;->updateIndicationPosition()V

    .line 50
    .line 51
    .line 52
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 53
    .line 54
    .line 55
    return-object p1
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->currentOrientation:I

    .line 12
    .line 13
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 14
    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->updateLayout()V

    .line 18
    .line 19
    .line 20
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 21
    .line 22
    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->currentOrientation:I

    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final onFinishInflate()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->getRightView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->init()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->getRightView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x1

    .line 13
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRight:Z

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->leftView$delegate:Lkotlin/Lazy;

    .line 16
    .line 17
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->init()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 39
    .line 40
    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->currentOrientation:I

    .line 41
    .line 42
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->onFinishInflate()V

    .line 43
    .line 44
    .line 45
    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_BOTTOM_USIM_TEXT:Z

    .line 46
    .line 47
    const-string v1, "KeyguardSecBottomAreaView"

    .line 48
    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    const v0, 0x7f0a0c9e

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Landroid/widget/LinearLayout;

    .line 59
    .line 60
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->usimTextArea:Landroid/widget/LinearLayout;

    .line 61
    .line 62
    const v0, 0x7f0a03a9

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Lcom/android/keyguard/EmergencyButton;

    .line 70
    .line 71
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->emergencyButton:Lcom/android/keyguard/EmergencyButton;

    .line 72
    .line 73
    const v0, 0x7f0a0ae9

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Landroid/view/ViewStub;

    .line 81
    .line 82
    if-eqz v0, :cond_1

    .line 83
    .line 84
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 85
    .line 86
    .line 87
    const v0, 0x7f0a0560

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    .line 95
    .line 96
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->usimCarrierText:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    .line 97
    .line 98
    new-instance p0, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string v2, "mUsimCarrierText="

    .line 101
    .line 102
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_0
    const-string p0, "onFinishInflate: USIM is null"

    .line 117
    .line 118
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    :cond_1
    :goto_0
    return-void
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 1
    if-ne p1, p0, :cond_3

    .line 2
    .line 3
    iget p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->isLastVisibility:I

    .line 4
    .line 5
    if-eq p1, p2, :cond_3

    .line 6
    .line 7
    iput p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->isLastVisibility:I

    .line 8
    .line 9
    if-nez p2, :cond_3

    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->setUsimTextAreaVisibility:Lkotlin/jvm/functions/Function0;

    .line 12
    .line 13
    const/4 p2, 0x0

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object p1, p2

    .line 20
    :goto_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->showShortcutsIfPossible:Lkotlin/jvm/functions/Function0;

    .line 24
    .line 25
    if-eqz p0, :cond_3

    .line 26
    .line 27
    if-eqz p0, :cond_2

    .line 28
    .line 29
    move-object p2, p0

    .line 30
    :cond_2
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    :cond_3
    return-void
.end method

.method public final setAllChildEnabled(Landroid/view/View;Z)V
    .locals 3

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast p1, Landroid/view/ViewGroup;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    :goto_0
    if-ge v1, v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {p0, v2, p2}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->setAllChildEnabled(Landroid/view/View;Z)V

    .line 22
    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public final setBinding(Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->binding:Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$Binding;

    .line 2
    .line 3
    return-void
.end method

.method public final updateIndicationPosition(Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;)V
    .locals 13

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->isKeyguardVisible:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 15
    .line 16
    new-instance v10, Landroid/text/StaticLayout;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->indicationText$delegate:Lkotlin/Lazy;

    .line 19
    .line 20
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Landroid/widget/TextView;

    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->indicationText$delegate:Lkotlin/Lazy;

    .line 31
    .line 32
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Landroid/widget/TextView;

    .line 37
    .line 38
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    const/4 v11, 0x2

    .line 43
    if-ne v1, v11, :cond_1

    .line 44
    .line 45
    const v2, 0x7f07042d

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const v2, 0x7f07042c

    .line 50
    .line 51
    .line 52
    :goto_0
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 57
    .line 58
    const/high16 v7, 0x3f800000    # 1.0f

    .line 59
    .line 60
    const/4 v8, 0x0

    .line 61
    const/4 v9, 0x0

    .line 62
    move-object v2, v10

    .line 63
    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v10}, Landroid/text/StaticLayout;->getLineCount()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->indicationText$delegate:Lkotlin/Lazy;

    .line 71
    .line 72
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    check-cast v3, Landroid/widget/TextView;

    .line 77
    .line 78
    invoke-virtual {v3}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    .line 83
    .line 84
    const/4 v5, 0x0

    .line 85
    const/4 v6, 0x1

    .line 86
    if-eq v3, v4, :cond_3

    .line 87
    .line 88
    if-ne v2, v6, :cond_2

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    move v3, v5

    .line 92
    goto :goto_2

    .line 93
    :cond_3
    :goto_1
    move v3, v6

    .line 94
    :goto_2
    sget-boolean v4, Lcom/android/systemui/LsRune;->LOCKUI_BOTTOM_USIM_TEXT:Z

    .line 95
    .line 96
    const/16 v7, 0x8

    .line 97
    .line 98
    const/4 v8, 0x0

    .line 99
    if-eqz v4, :cond_7

    .line 100
    .line 101
    if-ne v1, v11, :cond_5

    .line 102
    .line 103
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->disclosureIndicationText$delegate:Lkotlin/Lazy;

    .line 104
    .line 105
    invoke-interface {v9}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v9

    .line 109
    check-cast v9, Landroid/widget/TextView;

    .line 110
    .line 111
    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 112
    .line 113
    .line 114
    move-result-object v9

    .line 115
    if-eqz v9, :cond_5

    .line 116
    .line 117
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->usimCarrierText:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    .line 118
    .line 119
    if-nez v9, :cond_4

    .line 120
    .line 121
    move-object v9, v8

    .line 122
    :cond_4
    invoke-virtual {v9, v7}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 123
    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_5
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->usimCarrierText:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    .line 127
    .line 128
    if-nez v9, :cond_6

    .line 129
    .line 130
    move-object v9, v8

    .line 131
    :cond_6
    iget v10, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->currentSimState:I

    .line 132
    .line 133
    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->updateText(I)V

    .line 134
    .line 135
    .line 136
    :cond_7
    :goto_3
    sget-object v9, Lcom/android/systemui/util/DeviceState;->sDisplaySize:Landroid/graphics/Point;

    .line 137
    .line 138
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 139
    .line 140
    .line 141
    move-result v9

    .line 142
    const/4 v10, 0x4

    .line 143
    const/4 v12, 0x3

    .line 144
    if-eqz v9, :cond_8

    .line 145
    .line 146
    const v9, 0x7f070421

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 150
    .line 151
    .line 152
    move-result v9

    .line 153
    goto :goto_4

    .line 154
    :cond_8
    if-eqz v3, :cond_9

    .line 155
    .line 156
    const v9, 0x7f07041f

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 160
    .line 161
    .line 162
    move-result v9

    .line 163
    goto :goto_4

    .line 164
    :cond_9
    if-eq v2, v11, :cond_c

    .line 165
    .line 166
    if-eq v2, v12, :cond_b

    .line 167
    .line 168
    const v9, 0x7f070426

    .line 169
    .line 170
    .line 171
    if-eq v2, v10, :cond_a

    .line 172
    .line 173
    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 174
    .line 175
    .line 176
    move-result v9

    .line 177
    goto :goto_4

    .line 178
    :cond_a
    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 179
    .line 180
    .line 181
    move-result v9

    .line 182
    goto :goto_4

    .line 183
    :cond_b
    const v9, 0x7f070424

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 187
    .line 188
    .line 189
    move-result v9

    .line 190
    goto :goto_4

    .line 191
    :cond_c
    const v9, 0x7f070422

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 195
    .line 196
    .line 197
    move-result v9

    .line 198
    :goto_4
    iput v9, p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->indicationAreaBottomMargin:I

    .line 199
    .line 200
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->isPluginLockOverlayView:Z

    .line 201
    .line 202
    if-nez v9, :cond_d

    .line 203
    .line 204
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isInDisplayFpSensorPositionHigh()Z

    .line 205
    .line 206
    .line 207
    move-result v9

    .line 208
    if-eqz v9, :cond_d

    .line 209
    .line 210
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    .line 211
    .line 212
    .line 213
    move-result-object v9

    .line 214
    invoke-virtual {v9}, Landroid/view/Display;->getRotation()I

    .line 215
    .line 216
    .line 217
    move-result v9

    .line 218
    if-nez v9, :cond_d

    .line 219
    .line 220
    sget v7, Lcom/android/systemui/util/DeviceState;->sInDisplayFingerprintHeight:I

    .line 221
    .line 222
    iput v7, p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->upperFPIndicationBottomMargin:I

    .line 223
    .line 224
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->upperFPIndication$delegate:Lkotlin/Lazy;

    .line 225
    .line 226
    invoke-interface {v7}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v7

    .line 230
    check-cast v7, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 231
    .line 232
    invoke-virtual {v7, v5}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 233
    .line 234
    .line 235
    goto :goto_5

    .line 236
    :cond_d
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->upperFPIndication$delegate:Lkotlin/Lazy;

    .line 237
    .line 238
    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v5

    .line 242
    check-cast v5, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 243
    .line 244
    invoke-virtual {v5, v7}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 245
    .line 246
    .line 247
    :goto_5
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 248
    .line 249
    .line 250
    move-result v5

    .line 251
    if-eqz v5, :cond_e

    .line 252
    .line 253
    iget v5, p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->shortcutSideMargin:I

    .line 254
    .line 255
    iget-object v7, p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->buttonSizePx:Landroid/util/Size;

    .line 256
    .line 257
    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    .line 258
    .line 259
    .line 260
    move-result v7

    .line 261
    add-int/2addr v7, v5

    .line 262
    const v5, 0x7f070458

    .line 263
    .line 264
    .line 265
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 266
    .line 267
    .line 268
    move-result v5

    .line 269
    goto :goto_6

    .line 270
    :cond_e
    if-eqz v3, :cond_f

    .line 271
    .line 272
    iget v5, p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->shortcutSideMargin:I

    .line 273
    .line 274
    goto :goto_7

    .line 275
    :cond_f
    iget v5, p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->shortcutSideMargin:I

    .line 276
    .line 277
    iget-object v7, p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->buttonSizePx:Landroid/util/Size;

    .line 278
    .line 279
    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    .line 280
    .line 281
    .line 282
    move-result v7

    .line 283
    add-int/2addr v7, v5

    .line 284
    const v5, 0x7f070455

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 288
    .line 289
    .line 290
    move-result v5

    .line 291
    :goto_6
    add-int/2addr v5, v7

    .line 292
    :goto_7
    iput v5, p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->indicationAreaSideMargin:I

    .line 293
    .line 294
    if-ne v1, v11, :cond_19

    .line 295
    .line 296
    if-eqz v3, :cond_10

    .line 297
    .line 298
    const v2, 0x7f070420

    .line 299
    .line 300
    .line 301
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 302
    .line 303
    .line 304
    move-result v2

    .line 305
    goto :goto_8

    .line 306
    :cond_10
    if-eq v2, v11, :cond_13

    .line 307
    .line 308
    if-eq v2, v12, :cond_12

    .line 309
    .line 310
    const v3, 0x7f070427

    .line 311
    .line 312
    .line 313
    if-eq v2, v10, :cond_11

    .line 314
    .line 315
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 316
    .line 317
    .line 318
    move-result v2

    .line 319
    goto :goto_8

    .line 320
    :cond_11
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 321
    .line 322
    .line 323
    move-result v2

    .line 324
    goto :goto_8

    .line 325
    :cond_12
    const v2, 0x7f070425

    .line 326
    .line 327
    .line 328
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 329
    .line 330
    .line 331
    move-result v2

    .line 332
    goto :goto_8

    .line 333
    :cond_13
    const v2, 0x7f070423

    .line 334
    .line 335
    .line 336
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 337
    .line 338
    .line 339
    move-result v2

    .line 340
    :goto_8
    iput v2, p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->indicationAreaBottomMargin:I

    .line 341
    .line 342
    if-eqz v4, :cond_16

    .line 343
    .line 344
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->usimCarrierText:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    .line 345
    .line 346
    if-nez v2, :cond_14

    .line 347
    .line 348
    move-object v2, v8

    .line 349
    :cond_14
    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    .line 350
    .line 351
    .line 352
    move-result v2

    .line 353
    if-nez v2, :cond_16

    .line 354
    .line 355
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->usimCarrierText:Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    .line 356
    .line 357
    if-nez v2, :cond_15

    .line 358
    .line 359
    goto :goto_9

    .line 360
    :cond_15
    move-object v8, v2

    .line 361
    :goto_9
    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 362
    .line 363
    .line 364
    move-result-object v2

    .line 365
    if-eqz v2, :cond_16

    .line 366
    .line 367
    const v2, 0x7f070473

    .line 368
    .line 369
    .line 370
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 371
    .line 372
    .line 373
    move-result v2

    .line 374
    iput v2, p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->indicationAreaBottomMargin:I

    .line 375
    .line 376
    :cond_16
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 377
    .line 378
    .line 379
    move-result v2

    .line 380
    if-eqz v2, :cond_18

    .line 381
    .line 382
    const-class v2, Lcom/android/systemui/util/DesktopManager;

    .line 383
    .line 384
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v2

    .line 388
    check-cast v2, Lcom/android/systemui/util/DesktopManager;

    .line 389
    .line 390
    check-cast v2, Lcom/android/systemui/util/DesktopManagerImpl;

    .line 391
    .line 392
    invoke-virtual {v2}, Lcom/android/systemui/util/DesktopManagerImpl;->isStandalone()Z

    .line 393
    .line 394
    .line 395
    move-result v2

    .line 396
    if-eqz v2, :cond_17

    .line 397
    .line 398
    const v2, 0x7f07046e

    .line 399
    .line 400
    .line 401
    goto :goto_a

    .line 402
    :cond_17
    const v2, 0x7f07046f

    .line 403
    .line 404
    .line 405
    :goto_a
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 406
    .line 407
    .line 408
    move-result v2

    .line 409
    iput v2, p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->indicationAreaBottomMargin:I

    .line 410
    .line 411
    :cond_18
    iget v2, p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->shortcutSideMargin:I

    .line 412
    .line 413
    iget-object v3, p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->buttonSizePx:Landroid/util/Size;

    .line 414
    .line 415
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    .line 416
    .line 417
    .line 418
    move-result v3

    .line 419
    add-int/2addr v3, v2

    .line 420
    const v2, 0x7f07042a

    .line 421
    .line 422
    .line 423
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 424
    .line 425
    .line 426
    move-result v2

    .line 427
    add-int/2addr v2, v3

    .line 428
    iput v2, p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->indicationAreaSideMargin:I

    .line 429
    .line 430
    :cond_19
    sget-boolean v2, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    .line 431
    .line 432
    if-eqz v2, :cond_1b

    .line 433
    .line 434
    const-class v2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 435
    .line 436
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    move-result-object v2

    .line 440
    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 441
    .line 442
    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isFingerprintOptionEnabled()Z

    .line 443
    .line 444
    .line 445
    move-result v2

    .line 446
    if-eqz v2, :cond_1b

    .line 447
    .line 448
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    .line 449
    .line 450
    .line 451
    move-result-object v2

    .line 452
    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    .line 453
    .line 454
    .line 455
    move-result v2

    .line 456
    if-eqz v2, :cond_1a

    .line 457
    .line 458
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    .line 459
    .line 460
    .line 461
    move-result-object v2

    .line 462
    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    .line 463
    .line 464
    .line 465
    move-result v2

    .line 466
    if-ne v2, v11, :cond_1b

    .line 467
    .line 468
    :cond_1a
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isInDisplayFpSensorPositionHigh()Z

    .line 469
    .line 470
    .line 471
    move-result v2

    .line 472
    if-nez v2, :cond_1b

    .line 473
    .line 474
    sget v2, Lcom/android/systemui/util/DeviceState;->sInDisplayFingerprintHeight:I

    .line 475
    .line 476
    const v3, 0x7f070446

    .line 477
    .line 478
    .line 479
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 480
    .line 481
    .line 482
    move-result v3

    .line 483
    add-int/2addr v3, v2

    .line 484
    iput v3, p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->indicationAreaBottomMargin:I

    .line 485
    .line 486
    :cond_1b
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->pluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

    .line 487
    .line 488
    if-eqz v2, :cond_1e

    .line 489
    .line 490
    check-cast v2, Lcom/android/systemui/pluginlock/PluginLockDataImpl;

    .line 491
    .line 492
    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->isAvailable()Z

    .line 493
    .line 494
    .line 495
    move-result v2

    .line 496
    if-eqz v2, :cond_1e

    .line 497
    .line 498
    iget v2, p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->indicationAreaBottomMargin:I

    .line 499
    .line 500
    const-string v3, "LockStar is available bottom : "

    .line 501
    .line 502
    const-string v4, "KeyguardSecBottomAreaView"

    .line 503
    .line 504
    invoke-static {v3, v2, v4}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 505
    .line 506
    .line 507
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->pluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

    .line 508
    .line 509
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 510
    .line 511
    .line 512
    check-cast v2, Lcom/android/systemui/pluginlock/PluginLockDataImpl;

    .line 513
    .line 514
    iget-object v3, v2, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 515
    .line 516
    if-nez v3, :cond_1c

    .line 517
    .line 518
    const/4 v2, -0x1

    .line 519
    goto :goto_b

    .line 520
    :cond_1c
    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->isLandscape()Z

    .line 521
    .line 522
    .line 523
    move-result v3

    .line 524
    if-eqz v3, :cond_1d

    .line 525
    .line 526
    iget-object v2, v2, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 527
    .line 528
    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getIndicationData()Lcom/android/systemui/pluginlock/model/IndicationData;

    .line 529
    .line 530
    .line 531
    move-result-object v2

    .line 532
    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/model/IndicationData;->getHelpTextData()Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;

    .line 533
    .line 534
    .line 535
    move-result-object v2

    .line 536
    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;->getPaddingBottomLand()Ljava/lang/Integer;

    .line 537
    .line 538
    .line 539
    move-result-object v2

    .line 540
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 541
    .line 542
    .line 543
    move-result v2

    .line 544
    goto :goto_b

    .line 545
    :cond_1d
    iget-object v2, v2, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 546
    .line 547
    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getIndicationData()Lcom/android/systemui/pluginlock/model/IndicationData;

    .line 548
    .line 549
    .line 550
    move-result-object v2

    .line 551
    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/model/IndicationData;->getHelpTextData()Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;

    .line 552
    .line 553
    .line 554
    move-result-object v2

    .line 555
    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;->getPaddingBottom()Ljava/lang/Integer;

    .line 556
    .line 557
    .line 558
    move-result-object v2

    .line 559
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 560
    .line 561
    .line 562
    move-result v2

    .line 563
    :goto_b
    iput v2, p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->indicationAreaBottomMargin:I

    .line 564
    .line 565
    :cond_1e
    sget-boolean v2, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_LOCK:Z

    .line 566
    .line 567
    if-eqz v2, :cond_1f

    .line 568
    .line 569
    const-class v2, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 570
    .line 571
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    move-result-object v2

    .line 575
    check-cast v2, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 576
    .line 577
    iget-boolean v2, v2, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    .line 578
    .line 579
    if-eqz v2, :cond_1f

    .line 580
    .line 581
    if-ne v1, v11, :cond_1f

    .line 582
    .line 583
    const v1, 0x7f070488

    .line 584
    .line 585
    .line 586
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 587
    .line 588
    .line 589
    move-result v0

    .line 590
    goto :goto_d

    .line 591
    :cond_1f
    if-ne v1, v6, :cond_20

    .line 592
    .line 593
    const v1, 0x7f070486

    .line 594
    .line 595
    .line 596
    goto :goto_c

    .line 597
    :cond_20
    const v1, 0x7f070487

    .line 598
    .line 599
    .line 600
    :goto_c
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 601
    .line 602
    .line 603
    move-result v0

    .line 604
    :goto_d
    iput v0, p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->usimTextAreaBottomMargin:I

    .line 605
    .line 606
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->isPluginLockOverlayView:Z

    .line 607
    .line 608
    iput-boolean p0, p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->isOverlayView:Z

    .line 609
    .line 610
    return-void
.end method

.method public final updateLayout()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->mDisplay$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/Display;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->displayMetrics$delegate:Lkotlin/Lazy;

    .line 10
    .line 11
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroid/util/DisplayMetrics;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->getBinding()Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$Binding;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$1;

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$1;->onConfigurationChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method public final updateShortcutPosition(Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->isKeyguardVisible:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 15
    .line 16
    const v2, 0x7f070479

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    sget-boolean v3, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_LOCK:Z

    .line 24
    .line 25
    const/4 v4, 0x1

    .line 26
    if-eqz v3, :cond_4

    .line 27
    .line 28
    const-class v3, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 29
    .line 30
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 35
    .line 36
    iget-boolean v3, v3, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    .line 37
    .line 38
    if-eqz v3, :cond_2

    .line 39
    .line 40
    if-ne v1, v4, :cond_1

    .line 41
    .line 42
    const v1, 0x7f070476

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const v1, 0x7f070477

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    :goto_0
    iput v1, p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->shortcutSideMargin:I

    .line 58
    .line 59
    const v1, 0x7f07046c

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    iput v0, p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->shortcutBottomMargin:I

    .line 67
    .line 68
    goto/16 :goto_3

    .line 69
    .line 70
    :cond_2
    if-ne v1, v4, :cond_3

    .line 71
    .line 72
    const v1, 0x7f070474

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    goto :goto_1

    .line 80
    :cond_3
    const v1, 0x7f070475

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    :goto_1
    iput v1, p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->shortcutSideMargin:I

    .line 88
    .line 89
    const v1, 0x7f07046b

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    iput v0, p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->shortcutBottomMargin:I

    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_4
    sget-object v3, Lcom/android/systemui/util/DeviceState;->sDisplaySize:Landroid/graphics/Point;

    .line 100
    .line 101
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    if-eqz v3, :cond_6

    .line 106
    .line 107
    const v2, 0x7f07046d

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    iput v2, p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->shortcutBottomMargin:I

    .line 115
    .line 116
    if-ne v1, v4, :cond_5

    .line 117
    .line 118
    const v1, 0x7f070478

    .line 119
    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_5
    const v1, 0x7f070472

    .line 123
    .line 124
    .line 125
    :goto_2
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    iput v1, p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->shortcutSideMargin:I

    .line 130
    .line 131
    const v1, 0x7f07047a

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    goto :goto_3

    .line 139
    :cond_6
    if-ne v1, v4, :cond_7

    .line 140
    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->displayMetrics$delegate:Lkotlin/Lazy;

    .line 142
    .line 143
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    check-cast v0, Landroid/util/DisplayMetrics;

    .line 148
    .line 149
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 150
    .line 151
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->displayMetrics$delegate:Lkotlin/Lazy;

    .line 152
    .line 153
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    check-cast v1, Landroid/util/DisplayMetrics;

    .line 158
    .line 159
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 160
    .line 161
    const-wide v3, 0x3fb126e978d4fdf4L    # 0.067

    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    int-to-double v5, v1

    .line 167
    mul-double/2addr v5, v3

    .line 168
    double-to-int v1, v5

    .line 169
    iput v1, p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->shortcutSideMargin:I

    .line 170
    .line 171
    const-wide v3, 0x3f989374bc6a7efaL    # 0.024

    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    int-to-double v0, v0

    .line 177
    mul-double/2addr v0, v3

    .line 178
    double-to-int v0, v0

    .line 179
    iput v0, p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->shortcutBottomMargin:I

    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_7
    const v1, 0x7f070471

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    iput v1, p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->shortcutSideMargin:I

    .line 190
    .line 191
    const v1, 0x7f07046a

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    iput v0, p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->shortcutBottomMargin:I

    .line 199
    .line 200
    :goto_3
    new-instance v0, Landroid/util/Size;

    .line 201
    .line 202
    invoke-direct {v0, v2, v2}, Landroid/util/Size;-><init>(II)V

    .line 203
    .line 204
    .line 205
    iput-object v0, p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->buttonSizePx:Landroid/util/Size;

    .line 206
    .line 207
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->isPluginLockOverlayView:Z

    .line 208
    .line 209
    iput-boolean p0, p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->isOverlayView:Z

    .line 210
    .line 211
    return-void
.end method
