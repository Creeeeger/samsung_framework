.class public final Lcom/android/systemui/statusbar/KeyguardShortcutManager$generateQuickAffordanceConfig$1$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;


# instance fields
.field public final synthetic $shortcutData:Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

.field public final synthetic $this_with:I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;Lcom/android/systemui/statusbar/KeyguardShortcutManager;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$generateQuickAffordanceConfig$1$1;->$shortcutData:Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$generateQuickAffordanceConfig$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 4
    .line 5
    iput p3, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$generateQuickAffordanceConfig$1$1;->$this_with:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$generateQuickAffordanceConfig$1$1;->$shortcutData:Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-object p0
.end method

.method public final getLockScreenState()Lkotlinx/coroutines/flow/Flow;
    .locals 5

    .line 1
    new-instance v0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$LockScreenState$Visible;

    .line 2
    .line 3
    new-instance v1, Lcom/android/systemui/common/shared/model/Icon$Loaded;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$generateQuickAffordanceConfig$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 6
    .line 7
    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$generateQuickAffordanceConfig$1$1;->$this_with:I

    .line 8
    .line 9
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->getShortcutDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    new-instance v4, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$generateQuickAffordanceConfig$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 19
    .line 20
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->getShortcutContentDescription(I)Ljava/lang/CharSequence;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Ljava/lang/String;

    .line 25
    .line 26
    invoke-direct {v4, p0}, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, v2, v4}, Lcom/android/systemui/common/shared/model/Icon$Loaded;-><init>(Landroid/graphics/drawable/Drawable;Lcom/android/systemui/common/shared/model/ContentDescription;)V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    const/4 v2, 0x2

    .line 34
    invoke-direct {v0, v1, p0, v2, p0}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$LockScreenState$Visible;-><init>(Lcom/android/systemui/common/shared/model/Icon;Lcom/android/systemui/keyguard/shared/quickaffordance/ActivationState;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 35
    .line 36
    .line 37
    new-instance p0, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    .line 38
    .line 39
    invoke-direct {p0, v0}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    return-object p0
.end method

.method public final getPickerIconResourceId()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getPickerScreenState(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$PickerScreenState$Default;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, p1, v0, p1}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$PickerScreenState$Default;-><init>(Landroid/content/Intent;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public final onTriggered(Lcom/android/systemui/animation/Expandable;)Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$OnTriggeredResult;
    .locals 2

    .line 1
    new-instance p1, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$OnTriggeredResult$StartActivity;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$generateQuickAffordanceConfig$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 4
    .line 5
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$generateQuickAffordanceConfig$1$1;->$this_with:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->getIntent(I)Landroid/content/Intent;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$generateQuickAffordanceConfig$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isNoUnlockNeeded(I)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    invoke-direct {p1, v0, p0}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$OnTriggeredResult$StartActivity;-><init>(Landroid/content/Intent;Z)V

    .line 21
    .line 22
    .line 23
    return-object p1
.end method

.method public final pickerName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$generateQuickAffordanceConfig$1$1;->$shortcutData:Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->mAppLabel:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method
