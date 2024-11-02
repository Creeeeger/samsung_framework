.class public final synthetic Lcom/android/keyguard/KeyguardHintTextArea$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/keyguard/KeyguardHintTextArea;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardHintTextArea;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/keyguard/KeyguardHintTextArea$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHintTextArea$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/KeyguardHintTextArea;

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
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/keyguard/KeyguardHintTextArea$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x8

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :pswitch_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHintTextArea$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/KeyguardHintTextArea;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mHintText:Lcom/android/systemui/widget/SystemUITextView;

    .line 13
    .line 14
    invoke-virtual {p0, v2}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHintTextArea$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/KeyguardHintTextArea;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mHintText:Lcom/android/systemui/widget/SystemUITextView;

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHintTextArea$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/KeyguardHintTextArea;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mShowHintText:Lcom/android/systemui/widget/SystemUITextView;

    .line 29
    .line 30
    invoke-virtual {p0, v2}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHintTextArea$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/KeyguardHintTextArea;

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mShowHintText:Lcom/android/systemui/widget/SystemUITextView;

    .line 37
    .line 38
    invoke-virtual {p0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
