.class public final synthetic Lcom/android/keyguard/KeyguardSecESimArea$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardSecESimArea$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecESimArea$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecESimArea$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardSecESimArea$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecESimArea$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardSecESimArea$1;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string p1, "KeyguardSecEsimArea"

    .line 7
    .line 8
    const-string/jumbo p2, "onClick - Remove button"

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecESimArea$1;->this$0:Lcom/android/keyguard/KeyguardSecESimArea;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecESimArea;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 17
    .line 18
    const/4 p2, 0x2

    .line 19
    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(I)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecESimArea$1;->this$0:Lcom/android/keyguard/KeyguardSecESimArea;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecESimArea;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 26
    .line 27
    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->removeESim(I)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
