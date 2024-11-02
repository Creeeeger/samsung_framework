.class public final Lcom/android/keyguard/KeyguardFMMViewController$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardFMMViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardFMMViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardFMMViewController$2;->this$0:Lcom/android/keyguard/KeyguardFMMViewController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardFMMViewController$2;->this$0:Lcom/android/keyguard/KeyguardFMMViewController;

    .line 2
    .line 3
    iget v0, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mOrientation:I

    .line 4
    .line 5
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 6
    .line 7
    if-eq v0, p1, :cond_0

    .line 8
    .line 9
    iput p1, p0, Lcom/android/keyguard/KeyguardFMMViewController;->mOrientation:I

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFMMViewController;->updateFMMLayout()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
