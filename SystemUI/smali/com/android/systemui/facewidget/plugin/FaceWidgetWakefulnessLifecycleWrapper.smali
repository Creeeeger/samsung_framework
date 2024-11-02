.class public final Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mObserver:Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper$1;

.field public mPluginKeyguardStatusView:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/WakefulnessLifecycle;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper$1;-><init>(Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;->mObserver:Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper$1;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
