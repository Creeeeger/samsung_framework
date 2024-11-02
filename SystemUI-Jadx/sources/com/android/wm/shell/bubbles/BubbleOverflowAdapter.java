package com.android.wm.shell.bubbles;

import android.content.Context;
import android.content.pm.ShortcutInfo;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.android.systemui.R;
import com.android.wm.shell.bubbles.BadgedImageView;
import java.util.List;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class BubbleOverflowAdapter extends RecyclerView.Adapter {
    public final List mBubbles;
    public final Context mContext;
    public final BubblePositioner mPositioner;
    public final Consumer mPromoteBubbleFromOverflow;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class ViewHolder extends RecyclerView.ViewHolder {
        public final BadgedImageView iconView;
        public final TextView textView;

        public ViewHolder(LinearLayout linearLayout, BubblePositioner bubblePositioner) {
            super(linearLayout);
            BadgedImageView badgedImageView = (BadgedImageView) linearLayout.findViewById(R.id.bubble_view);
            this.iconView = badgedImageView;
            badgedImageView.initialize(bubblePositioner);
            this.textView = (TextView) linearLayout.findViewById(R.id.bubble_view_name);
        }
    }

    public BubbleOverflowAdapter(Context context, List<Bubble> list, Consumer<Bubble> consumer, BubblePositioner bubblePositioner) {
        this.mContext = context;
        this.mBubbles = list;
        this.mPromoteBubbleFromOverflow = consumer;
        this.mPositioner = bubblePositioner;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.mBubbles.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        CharSequence charSequence;
        ViewHolder viewHolder2 = (ViewHolder) viewHolder;
        final Bubble bubble = (Bubble) this.mBubbles.get(i);
        BadgedImageView badgedImageView = viewHolder2.iconView;
        badgedImageView.setRenderedBubble(bubble);
        badgedImageView.removeDotSuppressionFlag(BadgedImageView.SuppressionFlag.FLYOUT_VISIBLE);
        badgedImageView.setOnClickListener(new View.OnClickListener() { // from class: com.android.wm.shell.bubbles.BubbleOverflowAdapter$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BubbleOverflowAdapter bubbleOverflowAdapter = BubbleOverflowAdapter.this;
                Bubble bubble2 = bubble;
                bubbleOverflowAdapter.mBubbles.remove(bubble2);
                bubbleOverflowAdapter.notifyDataSetChanged();
                bubbleOverflowAdapter.mPromoteBubbleFromOverflow.accept(bubble2);
            }
        });
        String str = bubble.mTitle;
        Context context = this.mContext;
        if (str == null) {
            str = context.getResources().getString(R.string.notification_bubble_title);
        }
        badgedImageView.setContentDescription(context.getResources().getString(R.string.bubble_content_description_single, str, bubble.mAppName));
        badgedImageView.setAccessibilityDelegate(new View.AccessibilityDelegate() { // from class: com.android.wm.shell.bubbles.BubbleOverflowAdapter.1
            @Override // android.view.View.AccessibilityDelegate
            public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(16, BubbleOverflowAdapter.this.mContext.getResources().getString(R.string.bubble_accessibility_action_add_back)));
            }
        });
        ShortcutInfo shortcutInfo = bubble.mShortcutInfo;
        if (shortcutInfo != null) {
            charSequence = shortcutInfo.getLabel();
        } else {
            charSequence = bubble.mAppName;
        }
        viewHolder2.textView.setText(charSequence);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(RecyclerView recyclerView, int i) {
        return new ViewHolder((LinearLayout) LayoutInflater.from(recyclerView.getContext()).inflate(R.layout.sec_bubble_overflow_view, (ViewGroup) recyclerView, false), this.mPositioner);
    }
}
