.class public final Lcom/android/systemui/statusbar/policy/NetspeedViewController$3;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/settings/UserTracker$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetspeedViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/NetspeedViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$3;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedViewController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onUserChanged(ILandroid/content/Context;)V
    .locals 2

    .line 1
    const-string p1, "NetspeedViewController"

    .line 2
    .line 3
    const-string/jumbo p2, "onUserSwitched"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$3;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedViewController;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 12
    .line 13
    check-cast p1, Lcom/android/systemui/statusbar/policy/NetspeedView;

    .line 14
    .line 15
    new-instance p2, Lcom/android/systemui/statusbar/policy/NetspeedViewController$3$$ExternalSyntheticLambda0;

    .line 16
    .line 17
    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/policy/NetspeedViewController$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedViewController$3;)V

    .line 18
    .line 19
    .line 20
    const-wide/16 v0, 0xbb8

    .line 21
    .line 22
    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method
