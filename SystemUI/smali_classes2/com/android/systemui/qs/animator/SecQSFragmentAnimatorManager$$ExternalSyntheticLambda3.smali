.class public final synthetic Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Ljava/util/function/BooleanSupplier;

    .line 10
    .line 11
    check-cast p1, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;

    .line 12
    .line 13
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->setExpandImmediateSupplier(Ljava/util/function/BooleanSupplier;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 20
    .line 21
    check-cast p1, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;

    .line 22
    .line 23
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->setPanelViewController(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p0, Ljava/util/ArrayList;

    .line 30
    .line 31
    check-cast p1, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p0, Landroid/content/res/Configuration;

    .line 40
    .line 41
    check-cast p1, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;

    .line 42
    .line 43
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p0, Lcom/android/systemui/plugins/qs/QS;

    .line 50
    .line 51
    check-cast p1, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;

    .line 52
    .line 53
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->setQs(Lcom/android/systemui/plugins/qs/QS;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :pswitch_5
    iget-object p0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast p0, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    .line 60
    .line 61
    check-cast p1, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;

    .line 62
    .line 63
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->onPanelExpansionChanged(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 70
    .line 71
    check-cast p1, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;

    .line 72
    .line 73
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->setNotificationStackScrollerController(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
