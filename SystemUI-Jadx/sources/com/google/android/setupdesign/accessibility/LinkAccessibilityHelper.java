package com.google.android.setupdesign.accessibility;

import android.graphics.Rect;
import android.os.Bundle;
import android.text.Layout;
import android.text.Spanned;
import android.text.style.ClickableSpan;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.TextView;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityNodeProviderCompat;
import androidx.core.widget.NestedScrollView$$ExternalSyntheticOutline0;
import androidx.customview.widget.ExploreByTouchHelper;
import com.samsung.android.nexus.video.VideoPlayer;
import java.util.ArrayList;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class LinkAccessibilityHelper extends AccessibilityDelegateCompat {
    public final AccessibilityDelegateCompat delegate;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    class PreOLinkAccessibilityHelper extends ExploreByTouchHelper {
        public final Rect tempRect;
        public final TextView view;

        public PreOLinkAccessibilityHelper(TextView textView) {
            super(textView);
            this.tempRect = new Rect();
            this.view = textView;
        }

        public final ClickableSpan getSpanForOffset(int i) {
            CharSequence text = this.view.getText();
            if (text instanceof Spanned) {
                ClickableSpan[] clickableSpanArr = (ClickableSpan[]) ((Spanned) text).getSpans(i, i, ClickableSpan.class);
                if (clickableSpanArr.length == 1) {
                    return clickableSpanArr[0];
                }
                return null;
            }
            return null;
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public final int getVirtualViewAt(float f, float f2) {
            TextView textView = this.view;
            CharSequence text = textView.getText();
            if (text instanceof Spanned) {
                Spanned spanned = (Spanned) text;
                int i = -1;
                if (textView.getLayout() != null) {
                    i = textView.getLayout().getOffsetForHorizontal(textView.getLayout().getLineForVertical((int) (Math.min((textView.getHeight() - textView.getTotalPaddingBottom()) - 1, Math.max(0.0f, f2 - textView.getTotalPaddingTop())) + textView.getScrollY())), Math.min((textView.getWidth() - textView.getTotalPaddingRight()) - 1, Math.max(0.0f, f - textView.getTotalPaddingLeft())) + textView.getScrollX());
                }
                ClickableSpan[] clickableSpanArr = (ClickableSpan[]) spanned.getSpans(i, i, ClickableSpan.class);
                if (clickableSpanArr.length == 1) {
                    return spanned.getSpanStart(clickableSpanArr[0]);
                }
                return VideoPlayer.MEDIA_ERROR_SYSTEM;
            }
            return VideoPlayer.MEDIA_ERROR_SYSTEM;
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public final void getVisibleVirtualViews(List list) {
            CharSequence text = this.view.getText();
            if (text instanceof Spanned) {
                Spanned spanned = (Spanned) text;
                for (ClickableSpan clickableSpan : (ClickableSpan[]) spanned.getSpans(0, spanned.length(), ClickableSpan.class)) {
                    ((ArrayList) list).add(Integer.valueOf(spanned.getSpanStart(clickableSpan)));
                }
            }
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public final boolean onPerformActionForVirtualView(int i, int i2, Bundle bundle) {
            if (i2 == 16) {
                ClickableSpan spanForOffset = getSpanForOffset(i);
                if (spanForOffset != null) {
                    spanForOffset.onClick(this.view);
                    return true;
                }
                NestedScrollView$$ExternalSyntheticOutline0.m("LinkSpan is null for offset: ", i, "LinkAccessibilityHelper");
                return false;
            }
            return false;
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public final void onPopulateEventForVirtualView(AccessibilityEvent accessibilityEvent, int i) {
            ClickableSpan spanForOffset = getSpanForOffset(i);
            TextView textView = this.view;
            if (spanForOffset != null) {
                CharSequence text = textView.getText();
                if (text instanceof Spanned) {
                    Spanned spanned = (Spanned) text;
                    text = spanned.subSequence(spanned.getSpanStart(spanForOffset), spanned.getSpanEnd(spanForOffset));
                }
                accessibilityEvent.setContentDescription(text);
                return;
            }
            Log.e("LinkAccessibilityHelper", "LinkSpan is null for offset: " + i);
            accessibilityEvent.setContentDescription(textView.getText());
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public final void onPopulateNodeForVirtualView(int i, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            Layout layout;
            ClickableSpan spanForOffset = getSpanForOffset(i);
            TextView textView = this.view;
            if (spanForOffset != null) {
                CharSequence text = textView.getText();
                if (text instanceof Spanned) {
                    Spanned spanned = (Spanned) text;
                    text = spanned.subSequence(spanned.getSpanStart(spanForOffset), spanned.getSpanEnd(spanForOffset));
                }
                accessibilityNodeInfoCompat.setContentDescription(text);
            } else {
                Log.e("LinkAccessibilityHelper", "LinkSpan is null for offset: " + i);
                accessibilityNodeInfoCompat.setContentDescription(textView.getText());
            }
            accessibilityNodeInfoCompat.mInfo.setFocusable(true);
            accessibilityNodeInfoCompat.setClickable(true);
            CharSequence text2 = textView.getText();
            Rect rect = this.tempRect;
            rect.setEmpty();
            if ((text2 instanceof Spanned) && (layout = textView.getLayout()) != null) {
                Spanned spanned2 = (Spanned) text2;
                int spanStart = spanned2.getSpanStart(spanForOffset);
                int spanEnd = spanned2.getSpanEnd(spanForOffset);
                float primaryHorizontal = layout.getPrimaryHorizontal(spanStart);
                float primaryHorizontal2 = layout.getPrimaryHorizontal(spanEnd);
                int lineForOffset = layout.getLineForOffset(spanStart);
                int lineForOffset2 = layout.getLineForOffset(spanEnd);
                layout.getLineBounds(lineForOffset, rect);
                if (lineForOffset2 == lineForOffset) {
                    rect.left = (int) Math.min(primaryHorizontal, primaryHorizontal2);
                    rect.right = (int) Math.max(primaryHorizontal, primaryHorizontal2);
                } else if (layout.getParagraphDirection(lineForOffset) == -1) {
                    rect.right = (int) primaryHorizontal;
                } else {
                    rect.left = (int) primaryHorizontal;
                }
                rect.offset(textView.getTotalPaddingLeft(), textView.getTotalPaddingTop());
            }
            if (rect.isEmpty()) {
                NestedScrollView$$ExternalSyntheticOutline0.m("LinkSpan bounds is empty for: ", i, "LinkAccessibilityHelper");
                rect.set(0, 0, 1, 1);
            }
            accessibilityNodeInfoCompat.setBoundsInParent(rect);
            accessibilityNodeInfoCompat.addAction(16);
        }
    }

    public LinkAccessibilityHelper(TextView textView) {
        this(new AccessibilityDelegateCompat());
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public final boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        return this.delegate.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public final AccessibilityNodeProviderCompat getAccessibilityNodeProvider(View view) {
        return this.delegate.getAccessibilityNodeProvider(view);
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public final void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        this.delegate.onInitializeAccessibilityEvent(view, accessibilityEvent);
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        this.delegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public final void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        this.delegate.onPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public final boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return this.delegate.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public final boolean performAccessibilityAction(View view, int i, Bundle bundle) {
        return this.delegate.performAccessibilityAction(view, i, bundle);
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public final void sendAccessibilityEvent(View view, int i) {
        this.delegate.sendAccessibilityEvent(view, i);
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public final void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
        this.delegate.sendAccessibilityEventUnchecked(view, accessibilityEvent);
    }

    public LinkAccessibilityHelper(AccessibilityDelegateCompat accessibilityDelegateCompat) {
        this.delegate = accessibilityDelegateCompat;
    }
}
