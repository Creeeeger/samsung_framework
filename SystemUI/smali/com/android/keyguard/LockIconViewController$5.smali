.class public final Lcom/android/keyguard/LockIconViewController$5;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/LockIconViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/LockIconViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/LockIconViewController$5;->this$0:Lcom/android/keyguard/LockIconViewController;

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
    .locals 0

    .line 1
    sget p1, Lcom/android/keyguard/LockIconViewController;->$r8$clinit:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/keyguard/LockIconViewController$5;->this$0:Lcom/android/keyguard/LockIconViewController;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lcom/android/keyguard/LockIconViewController;->-$$Nest$mupdateColors(Lcom/android/keyguard/LockIconViewController;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onThemeChanged()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/LockIconViewController$5;->this$0:Lcom/android/keyguard/LockIconViewController;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/keyguard/LockIconViewController;->-$$Nest$mupdateColors(Lcom/android/keyguard/LockIconViewController;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onUiModeChanged()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/LockIconViewController$5;->this$0:Lcom/android/keyguard/LockIconViewController;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/keyguard/LockIconViewController;->-$$Nest$mupdateColors(Lcom/android/keyguard/LockIconViewController;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
