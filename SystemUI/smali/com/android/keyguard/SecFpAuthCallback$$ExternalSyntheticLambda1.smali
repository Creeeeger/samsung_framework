.class public final synthetic Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/keyguard/SecFpAuthCallback;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/SecFpAuthCallback;ILjava/lang/CharSequence;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/SecFpAuthCallback;

    .line 4
    .line 5
    iput p2, p0, Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda1;->f$1:I

    .line 6
    .line 7
    iput-object p3, p0, Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda1;->f$2:Ljava/lang/CharSequence;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/SecFpAuthCallback;

    .line 9
    .line 10
    iget v2, p0, Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda1;->f$1:I

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda1;->f$2:Ljava/lang/CharSequence;

    .line 13
    .line 14
    check-cast p1, Ljava/util/function/Consumer;

    .line 15
    .line 16
    iget v0, v0, Lcom/android/keyguard/SecFpAuthCallback;->mCallbackSeq:I

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-static {v3, v0, v2, p0, v1}, Lcom/android/keyguard/SecFpMsg;->obtain(IIILjava/lang/CharSequence;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)Lcom/android/keyguard/SecFpMsg;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/SecFpAuthCallback;

    .line 28
    .line 29
    iget v2, p0, Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda1;->f$1:I

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda1;->f$2:Ljava/lang/CharSequence;

    .line 32
    .line 33
    check-cast p1, Ljava/util/function/Consumer;

    .line 34
    .line 35
    iget v0, v0, Lcom/android/keyguard/SecFpAuthCallback;->mCallbackSeq:I

    .line 36
    .line 37
    const/4 v3, 0x1

    .line 38
    invoke-static {v3, v0, v2, p0, v1}, Lcom/android/keyguard/SecFpMsg;->obtain(IIILjava/lang/CharSequence;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)Lcom/android/keyguard/SecFpMsg;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
