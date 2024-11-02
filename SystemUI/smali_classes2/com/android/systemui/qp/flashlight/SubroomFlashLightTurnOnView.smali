.class public Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView;
.super Landroid/widget/LinearLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mListener:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView$TurnOnClickListener;

.field public mTurnOnHelpText:Landroid/widget/TextView;

.field public mTurnOnView:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0a0c44

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/Button;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView;->mTurnOnView:Landroid/widget/Button;

    .line 14
    .line 15
    const v0, 0x7f0a0c43

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/TextView;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView;->mTurnOnHelpText:Landroid/widget/TextView;

    .line 25
    .line 26
    new-instance v1, Landroid/text/method/ScrollingMovementMethod;

    .line 27
    .line 28
    invoke-direct {v1}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView;->mTurnOnView:Landroid/widget/Button;

    .line 35
    .line 36
    new-instance v1, Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView$$ExternalSyntheticLambda0;

    .line 37
    .line 38
    invoke-direct {v1, p0}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView;->mTurnOnHelpText:Landroid/widget/TextView;

    .line 45
    .line 46
    new-instance v1, Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView$1;

    .line 47
    .line 48
    invoke-direct {v1, p0}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView$1;-><init>(Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method
