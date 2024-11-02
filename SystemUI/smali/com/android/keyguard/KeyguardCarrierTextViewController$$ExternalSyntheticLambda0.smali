.class public final synthetic Lcom/android/keyguard/KeyguardCarrierTextViewController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardCarrierTextViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardCarrierTextViewController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardCarrierTextViewController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardCarrierTextViewController;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController;->mIndicatorGardenPresenter:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    .line 4
    .line 5
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->onGardenApplyWindowInsets(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 9
    .line 10
    check-cast p0, Lcom/android/keyguard/KeyguardCarrierTextView;

    .line 11
    .line 12
    const p1, 0x7f0a018c

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Lcom/android/keyguard/CarrierText;

    .line 20
    .line 21
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method
