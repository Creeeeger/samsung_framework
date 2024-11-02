.class public final synthetic Lcom/android/settingslib/mobile/MobileStatusTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settingslib/mobile/MobileStatusTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/mobile/MobileStatusTracker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    .line 2
    .line 3
    new-instance v0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/settingslib/mobile/MobileStatusTracker;->mMobileStatus:Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;-><init>(Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker;->mCallback:Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;

    .line 11
    .line 12
    check-cast p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$1;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$1;->onMobileStatusChanged(ZLcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
