.class public final Lcom/android/keyguard/SecFaceMsg;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public arg:I

.field public msgString:Ljava/lang/CharSequence;

.field public result:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain(IILjava/lang/CharSequence;Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;)Lcom/android/keyguard/SecFaceMsg;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/keyguard/SecFaceMsg;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/keyguard/SecFaceMsg;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p0, v0, Lcom/android/keyguard/SecFaceMsg;->type:I

    .line 7
    .line 8
    iput p1, v0, Lcom/android/keyguard/SecFaceMsg;->arg:I

    .line 9
    .line 10
    iput-object p2, v0, Lcom/android/keyguard/SecFaceMsg;->msgString:Ljava/lang/CharSequence;

    .line 11
    .line 12
    iput-object p3, v0, Lcom/android/keyguard/SecFaceMsg;->result:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;

    .line 13
    .line 14
    return-object v0
.end method
