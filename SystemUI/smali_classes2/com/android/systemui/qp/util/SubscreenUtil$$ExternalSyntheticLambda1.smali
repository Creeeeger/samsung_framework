.class public final synthetic Lcom/android/systemui/qp/util/SubscreenUtil$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/qp/util/SubscreenUtil;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qp/util/SubscreenUtil;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/qp/util/SubscreenUtil$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/qp/util/SubscreenUtil$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qp/util/SubscreenUtil;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/qp/util/SubscreenUtil$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/qp/util/SubscreenUtil$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qp/util/SubscreenUtil;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/qp/util/SubscreenUtil;->mSubScreenQuickPanelWindowController:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->collapsePanel()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qp/util/SubscreenUtil$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qp/util/SubscreenUtil;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/systemui/qp/util/SubscreenUtil;->closeSubscreenPanel()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
