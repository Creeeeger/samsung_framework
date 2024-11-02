.class public final synthetic Lcom/android/keyguard/KeyguardSecPatternViewController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardSecPatternViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecPatternViewController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSecondsRemaining:I

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->updateLayout()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
