.class public final Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$QuickStarHelper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;


# instance fields
.field public final mSlimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$QuickStarHelper;->this$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$QuickStarHelper;->mSlimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final updateQuickStarStyle()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$QuickStarHelper;->this$0:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->updateLabelVisibility(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
