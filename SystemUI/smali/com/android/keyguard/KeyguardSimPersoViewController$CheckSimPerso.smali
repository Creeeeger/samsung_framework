.class public abstract Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;
.super Ljava/lang/Thread;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mPin:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSimPersoViewController;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;->mPin:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public abstract onSimCheckResponse(Z)V
.end method

.method public final run()V
    .locals 5

    .line 1
    const-wide/16 v0, 0x32

    .line 2
    .line 3
    :try_start_0
    const-string v2, "isemtelephony"

    .line 4
    .line 5
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-static {v2}, Lcom/android/internal/telephony/ISemTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISemTelephony;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    .line 16
    .line 17
    iget v3, v3, Lcom/android/keyguard/KeyguardSimPersoViewController;->mSubId:I

    .line 18
    .line 19
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;->mPin:Ljava/lang/String;

    .line 20
    .line 21
    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/ISemTelephony;->supplyPersoForSubId(ILjava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    .line 26
    .line 27
    iget v4, v3, Lcom/android/keyguard/KeyguardSimPersoViewController;->mSubId:I

    .line 28
    .line 29
    iget-object v3, v3, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 30
    .line 31
    check-cast v3, Lcom/android/keyguard/KeyguardSimPersoView;

    .line 32
    .line 33
    new-instance v4, Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso$$ExternalSyntheticLambda0;

    .line 34
    .line 35
    invoke-direct {v4, p0, v2}, Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;Z)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v4, v0, v1}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception v2

    .line 43
    const-string v3, "KeyguardSimPersoView"

    .line 44
    .line 45
    const-string v4, "RemoteException for supplyPerso:"

    .line 46
    .line 47
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    .line 49
    .line 50
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    .line 51
    .line 52
    sget-object v3, Lcom/android/keyguard/KeyguardSimPersoViewController;->SIM_TYPE:Ljava/lang/String;

    .line 53
    .line 54
    iget-object v2, v2, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 55
    .line 56
    check-cast v2, Lcom/android/keyguard/KeyguardSimPersoView;

    .line 57
    .line 58
    new-instance v3, Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso$$ExternalSyntheticLambda1;

    .line 59
    .line 60
    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v3, v0, v1}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 64
    .line 65
    .line 66
    :cond_0
    :goto_0
    return-void
.end method
