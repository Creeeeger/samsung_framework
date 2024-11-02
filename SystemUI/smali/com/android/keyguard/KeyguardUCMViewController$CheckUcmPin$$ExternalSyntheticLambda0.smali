.class public final synthetic Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Thread;

.field public final synthetic f$1:[I

.field public final synthetic f$2:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Thread;[ILandroid/os/Bundle;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Thread;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin$$ExternalSyntheticLambda0;->f$1:[I

    .line 6
    .line 7
    iput-object p3, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin$$ExternalSyntheticLambda0;->f$2:Landroid/os/Bundle;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Thread;

    .line 10
    .line 11
    check-cast v0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;

    .line 12
    .line 13
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin$$ExternalSyntheticLambda0;->f$1:[I

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin$$ExternalSyntheticLambda0;->f$2:Landroid/os/Bundle;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    aget v2, v3, v2

    .line 21
    .line 22
    aget v1, v3, v1

    .line 23
    .line 24
    invoke-virtual {v0, v2, v1, p0}, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;->onVerifyPinResponse(IILandroid/os/Bundle;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Thread;

    .line 29
    .line 30
    check-cast v0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPuk;

    .line 31
    .line 32
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin$$ExternalSyntheticLambda0;->f$1:[I

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin$$ExternalSyntheticLambda0;->f$2:Landroid/os/Bundle;

    .line 35
    .line 36
    sget v4, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPuk;->$r8$clinit:I

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    aget v2, v3, v2

    .line 42
    .line 43
    aget v1, v3, v1

    .line 44
    .line 45
    invoke-virtual {v0, v2, v1, p0}, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPuk;->onVerifyPukResponse(IILandroid/os/Bundle;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
