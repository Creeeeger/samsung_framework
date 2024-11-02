.class Lcom/samsung/android/desktopsystemui/sharedlib/system/WindowManagerWrapper$1;
.super Lcom/android/internal/os/IResultReceiver$Stub;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/desktopsystemui/sharedlib/system/WindowManagerWrapper;->requestAppKeyboardShortcuts(Lcom/samsung/android/desktopsystemui/sharedlib/system/WindowManagerWrapper$KeyboardShortcutsReceiver;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/desktopsystemui/sharedlib/system/WindowManagerWrapper;

.field final synthetic val$receiver:Lcom/samsung/android/desktopsystemui/sharedlib/system/WindowManagerWrapper$KeyboardShortcutsReceiver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/WindowManagerWrapper;Lcom/samsung/android/desktopsystemui/sharedlib/system/WindowManagerWrapper$KeyboardShortcutsReceiver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/WindowManagerWrapper$1;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/system/WindowManagerWrapper;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/WindowManagerWrapper$1;->val$receiver:Lcom/samsung/android/desktopsystemui/sharedlib/system/WindowManagerWrapper$KeyboardShortcutsReceiver;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/android/internal/os/IResultReceiver$Stub;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public send(ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    const-string/jumbo p1, "shortcuts_array"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/WindowManagerWrapper$1;->val$receiver:Lcom/samsung/android/desktopsystemui/sharedlib/system/WindowManagerWrapper$KeyboardShortcutsReceiver;

    .line 9
    .line 10
    invoke-interface {p0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/WindowManagerWrapper$KeyboardShortcutsReceiver;->onKeyboardShortcutsReceived(Ljava/util/List;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
