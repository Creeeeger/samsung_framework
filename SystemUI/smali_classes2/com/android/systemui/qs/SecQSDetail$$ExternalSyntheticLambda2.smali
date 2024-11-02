.class public final synthetic Lcom/android/systemui/qs/SecQSDetail$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/qs/SecQSDetail;

.field public final synthetic f$1:Lcom/android/systemui/plugins/qs/DetailAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/SecQSDetail;Lcom/android/systemui/plugins/qs/DetailAdapter;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/qs/SecQSDetail$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/qs/SecQSDetail$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/qs/SecQSDetail;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/systemui/qs/SecQSDetail$$ExternalSyntheticLambda2;->f$1:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/android/systemui/qs/SecQSDetail$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSDetail$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/qs/SecQSDetail;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSDetail$$ExternalSyntheticLambda2;->f$1:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 10
    .line 11
    iget-object v0, p1, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeaderSwitch:Lcom/android/systemui/qs/SecQSSwitch;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    xor-int/lit8 v0, v0, 0x1

    .line 18
    .line 19
    iget-object p1, p1, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeaderSwitch:Lcom/android/systemui/qs/SecQSSwitch;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/qs/DetailAdapter;->setToggleState(Z)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_1
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSDetail$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/qs/SecQSDetail;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSDetail$$ExternalSyntheticLambda2;->f$1:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 31
    .line 32
    invoke-static {p1, p0}, Lcom/android/systemui/qs/SecQSDetail;->$r8$lambda$1uAO_h_OA3h2MPW8fBnCc4-4CwE(Lcom/android/systemui/qs/SecQSDetail;Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSDetail$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/qs/SecQSDetail;

    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSDetail$$ExternalSyntheticLambda2;->f$1:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 39
    .line 40
    iget-object p1, p1, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeaderSwitch:Lcom/android/systemui/qs/SecQSSwitch;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->setToggleState(Z)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
