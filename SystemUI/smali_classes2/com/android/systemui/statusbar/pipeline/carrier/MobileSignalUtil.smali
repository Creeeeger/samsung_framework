.class public final Lcom/android/systemui/statusbar/pipeline/carrier/MobileSignalUtil;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final commonUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;

.field public final isVoiceCapable:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;Lcom/android/systemui/statusbar/pipeline/carrier/SystemPropertiesWrapper;Landroid/telephony/TelephonyManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/carrier/MobileSignalUtil;->commonUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;

    .line 5
    .line 6
    invoke-virtual {p3}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pipeline/carrier/MobileSignalUtil;->isVoiceCapable:Z

    .line 11
    .line 12
    return-void
.end method
