.class public final synthetic Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/keyguard/SecFpAuthCallback;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/SecFpAuthCallback;II)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/SecFpAuthCallback;

    .line 4
    .line 5
    iput p2, p0, Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda0;->f$1:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda0;->$r8$classId:I

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
    iget-object v0, p0, Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/SecFpAuthCallback;

    .line 9
    .line 10
    iget p0, p0, Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda0;->f$1:I

    .line 11
    .line 12
    check-cast p1, Ljava/util/function/Consumer;

    .line 13
    .line 14
    iget v0, v0, Lcom/android/keyguard/SecFpAuthCallback;->mCallbackSeq:I

    .line 15
    .line 16
    const/4 v2, 0x5

    .line 17
    invoke-static {v2, v0, p0, v1, v1}, Lcom/android/keyguard/SecFpMsg;->obtain(IIILjava/lang/CharSequence;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)Lcom/android/keyguard/SecFpMsg;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/SecFpAuthCallback;

    .line 26
    .line 27
    iget p0, p0, Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda0;->f$1:I

    .line 28
    .line 29
    check-cast p1, Ljava/util/function/Consumer;

    .line 30
    .line 31
    iget v0, v0, Lcom/android/keyguard/SecFpAuthCallback;->mCallbackSeq:I

    .line 32
    .line 33
    const/4 v2, 0x6

    .line 34
    invoke-static {v2, v0, p0, v1, v1}, Lcom/android/keyguard/SecFpMsg;->obtain(IIILjava/lang/CharSequence;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)Lcom/android/keyguard/SecFpMsg;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/SecFpAuthCallback;

    .line 43
    .line 44
    iget p0, p0, Lcom/android/keyguard/SecFpAuthCallback$$ExternalSyntheticLambda0;->f$1:I

    .line 45
    .line 46
    check-cast p1, Ljava/util/function/Consumer;

    .line 47
    .line 48
    iget v0, v0, Lcom/android/keyguard/SecFpAuthCallback;->mCallbackSeq:I

    .line 49
    .line 50
    const/4 v2, 0x4

    .line 51
    invoke-static {v2, v0, p0, v1, v1}, Lcom/android/keyguard/SecFpMsg;->obtain(IIILjava/lang/CharSequence;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)Lcom/android/keyguard/SecFpMsg;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
