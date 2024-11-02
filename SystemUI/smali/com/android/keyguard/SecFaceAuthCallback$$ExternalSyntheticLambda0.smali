.class public final synthetic Lcom/android/keyguard/SecFaceAuthCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/keyguard/SecFaceAuthCallback$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput p1, p0, Lcom/android/keyguard/SecFaceAuthCallback$$ExternalSyntheticLambda0;->f$0:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/keyguard/SecFaceAuthCallback$$ExternalSyntheticLambda0;->f$1:Ljava/lang/CharSequence;

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
    iget v0, p0, Lcom/android/keyguard/SecFaceAuthCallback$$ExternalSyntheticLambda0;->$r8$classId:I

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
    iget v0, p0, Lcom/android/keyguard/SecFaceAuthCallback$$ExternalSyntheticLambda0;->f$0:I

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/keyguard/SecFaceAuthCallback$$ExternalSyntheticLambda0;->f$1:Ljava/lang/CharSequence;

    .line 11
    .line 12
    check-cast p1, Ljava/util/function/Consumer;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-static {v2, v0, p0, v1}, Lcom/android/keyguard/SecFaceMsg;->obtain(IILjava/lang/CharSequence;Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;)Lcom/android/keyguard/SecFaceMsg;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :goto_0
    iget v0, p0, Lcom/android/keyguard/SecFaceAuthCallback$$ExternalSyntheticLambda0;->f$0:I

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/keyguard/SecFaceAuthCallback$$ExternalSyntheticLambda0;->f$1:Ljava/lang/CharSequence;

    .line 26
    .line 27
    check-cast p1, Ljava/util/function/Consumer;

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    invoke-static {v2, v0, p0, v1}, Lcom/android/keyguard/SecFaceMsg;->obtain(IILjava/lang/CharSequence;Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;)Lcom/android/keyguard/SecFaceMsg;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
