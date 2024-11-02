.class public final Lcom/android/keyguard/KeyguardCarrierTextViewController$2;
.super Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardCarrierTextViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardCarrierTextViewController;Lcom/android/systemui/statusbar/phone/IndicatorGarden;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController$2;->this$0:Lcom/android/keyguard/KeyguardCarrierTextViewController;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;-><init>(Lcom/android/systemui/statusbar/phone/IndicatorGarden;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getCameraTopMarginContainerMarginLayoutParams()Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierTextViewController$2;->this$0:Lcom/android/keyguard/KeyguardCarrierTextViewController;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardCarrierTextViewController;->getSidePaddingContainer()Landroid/view/ViewGroup;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 12
    .line 13
    return-object p0
.end method
