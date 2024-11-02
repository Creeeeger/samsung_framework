.class public final Lcom/android/keyguard/KeyguardSimPersoViewController$3;
.super Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

.field public final synthetic val$keyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field public final synthetic val$subId:I


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSimPersoViewController;Ljava/lang/String;ILcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    .line 2
    .line 3
    iput p3, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$3;->val$subId:I

    .line 4
    .line 5
    iput-object p4, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$3;->val$keyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;-><init>(Lcom/android/keyguard/KeyguardSimPersoViewController;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onSimCheckResponse(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    .line 2
    .line 3
    sget-object v1, Lcom/android/keyguard/KeyguardSimPersoViewController;->SIM_TYPE:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 6
    .line 7
    check-cast v0, Lcom/android/keyguard/KeyguardSimPersoView;

    .line 8
    .line 9
    iget v1, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$3;->val$subId:I

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$3;->val$keyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 12
    .line 13
    new-instance v3, Lcom/android/keyguard/KeyguardSimPersoViewController$3$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    invoke-direct {v3, p0, p1, v1, v2}, Lcom/android/keyguard/KeyguardSimPersoViewController$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardSimPersoViewController$3;ZILcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method
