.class public abstract Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mFilter:Landroid/content/IntentFilter;

.field public final mSettingsBackUpManager:Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;->mSettingsBackUpManager:Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;->setFilter()V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public abstract register()V
.end method

.method public abstract setFilter()V
.end method

.method public abstract unregister()V
.end method
