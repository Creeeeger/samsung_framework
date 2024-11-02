.class public final synthetic Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;ZLcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

    .line 4
    .line 5
    iput-boolean p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow$$ExternalSyntheticLambda0;->f$1:Z

    .line 6
    .line 7
    iput-object p3, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow$$ExternalSyntheticLambda0;->f$2:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    packed-switch p1, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    goto :goto_1

    .line 8
    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

    .line 9
    .line 10
    iget-boolean v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow$$ExternalSyntheticLambda0;->f$1:Z

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow$$ExternalSyntheticLambda0;->f$2:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;

    .line 13
    .line 14
    iget-object v2, p1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    .line 15
    .line 16
    iget-object v3, v2, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 17
    .line 18
    iget v4, v3, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultDataSimId:I

    .line 19
    .line 20
    if-nez v4, :cond_0

    .line 21
    .line 22
    iget-boolean v3, v3, Lcom/android/systemui/settings/multisim/MultiSIMData;->isDataEnabled:Z

    .line 23
    .line 24
    if-nez v3, :cond_3

    .line 25
    .line 26
    :cond_0
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    if-eqz v4, :cond_2

    .line 33
    .line 34
    iput-boolean v0, v2, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mChangedByDataButton:Z

    .line 35
    .line 36
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->updateTextColor()V

    .line 37
    .line 38
    .line 39
    iget-object p0, p1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 42
    .line 43
    sget-object v0, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->DATA:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->setDefaultSlot(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;I)V

    .line 47
    .line 48
    .line 49
    :cond_3
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void

    .line 53
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

    .line 54
    .line 55
    iget-boolean v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow$$ExternalSyntheticLambda0;->f$1:Z

    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow$$ExternalSyntheticLambda0;->f$2:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;

    .line 58
    .line 59
    iget-object v2, p1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    .line 60
    .line 61
    iget-object v3, v2, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 62
    .line 63
    iget v4, v3, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultDataSimId:I

    .line 64
    .line 65
    if-ne v4, v0, :cond_4

    .line 66
    .line 67
    iget-boolean v3, v3, Lcom/android/systemui/settings/multisim/MultiSIMData;->isDataEnabled:Z

    .line 68
    .line 69
    if-nez v3, :cond_7

    .line 70
    .line 71
    :cond_4
    if-eqz v1, :cond_5

    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_5
    if-eq v4, v0, :cond_6

    .line 78
    .line 79
    iput-boolean v0, v2, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mChangedByDataButton:Z

    .line 80
    .line 81
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->updateTextColor()V

    .line 82
    .line 83
    .line 84
    iget-object p0, p1, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    .line 85
    .line 86
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 87
    .line 88
    sget-object v1, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->DATA:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 89
    .line 90
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->setDefaultSlot(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;I)V

    .line 91
    .line 92
    .line 93
    :cond_7
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 94
    .line 95
    .line 96
    :goto_2
    return-void

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
