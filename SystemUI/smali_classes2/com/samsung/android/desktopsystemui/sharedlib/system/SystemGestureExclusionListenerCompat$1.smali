.class Lcom/samsung/android/desktopsystemui/sharedlib/system/SystemGestureExclusionListenerCompat$1;
.super Landroid/view/ISystemGestureExclusionListener$Stub;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/desktopsystemui/sharedlib/system/SystemGestureExclusionListenerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/desktopsystemui/sharedlib/system/SystemGestureExclusionListenerCompat;


# direct methods
.method public constructor <init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/SystemGestureExclusionListenerCompat;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/SystemGestureExclusionListenerCompat$1;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/system/SystemGestureExclusionListenerCompat;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/ISystemGestureExclusionListener$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onSystemGestureExclusionChanged(ILandroid/graphics/Region;Landroid/graphics/Region;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/SystemGestureExclusionListenerCompat$1;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/system/SystemGestureExclusionListenerCompat;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/SystemGestureExclusionListenerCompat;->access$000(Lcom/samsung/android/desktopsystemui/sharedlib/system/SystemGestureExclusionListenerCompat;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ne p1, v0, :cond_1

    .line 8
    .line 9
    if-nez p3, :cond_0

    .line 10
    .line 11
    move-object p3, p2

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/SystemGestureExclusionListenerCompat$1;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/system/SystemGestureExclusionListenerCompat;

    .line 13
    .line 14
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/desktopsystemui/sharedlib/system/SystemGestureExclusionListenerCompat;->onExclusionChanged(Landroid/graphics/Region;Landroid/graphics/Region;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method
