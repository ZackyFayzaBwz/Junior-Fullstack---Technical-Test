comments = [
    {
        'commentId': 1, 
        'commentContent': 'Hai', 
        'replies': [
            {
                'commentId': 11, 
                'commentContent': 'Hai juga', 
                'replies': [
                    {'commentId': 111, 'commentContent': 'Haai juga hai jugaa'},
                    {'commentId': 112, 'commentContent': 'Haai juga hai jugaa'}
                ]
            },
            {
                'commentId': 12, 
                'commentContent': 'Hai juga', 
                'replies': [
                    {'commentId': 121, 'commentContent': 'Haai juga hai jugaa'}
                ]
            }
        ]
    },
    {'commentId': 2, 'commentContent': 'Halooo'}
]

def count_comments(comments_list):
    count = 0
    for comment in comments_list:
        count += 1  # jumlah komentar
        if 'replies' in comment and comment['replies']:
            count += count_comments(comment['replies'])
    return count

print("Total komentar:", count_comments(comments))
