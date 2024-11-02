.class public final Lcom/android/systemui/statusbar/phone/LightsOutNotifController$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/LightsOutNotifController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/LightsOutNotifController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LightsOutNotifController$2;->this$0:Lcom/android/systemui/statusbar/phone/LightsOutNotifController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onSystemBarAttributesChanged(II[Lcom/android/internal/view/AppearanceRegion;ZIILjava/lang/String;[Lcom/android/internal/statusbar/LetterboxDetails;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LightsOutNotifController$2;->this$0:Lcom/android/systemui/statusbar/phone/LightsOutNotifController;

    .line 2
    .line 3
    iget p3, p0, Lcom/android/systemui/statusbar/phone/LightsOutNotifController;->mDisplayId:I

    .line 4
    .line 5
    if-eq p1, p3, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput p2, p0, Lcom/android/systemui/statusbar/phone/LightsOutNotifController;->mAppearance:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LightsOutNotifController;->updateLightsOutView()V

    .line 11
    .line 12
    .line 13
    return-void
.end method
