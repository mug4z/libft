/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_substr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tfrily <marvin@42lausanne.ch>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/10/19 11:58:34 by tfrily            #+#    #+#             */
/*   Updated: 2023/10/19 11:58:36 by tfrily           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */
#include "libft.h"

char	*ft_substr(char const *s, unsigned int start, size_t len)
{
	char	*memory;
	size_t	len_str;

	len_str = ft_strlen(s);
	if (!s)
		return (memory = NULL);
	if (start > len_str)
		return (ft_strdup(""));
	if (len > (len_str + start))
		len = ft_strlen(s + start);
	memory = ft_calloc(len + 1, sizeof(char));
	if (memory == NULL)
		return (memory = NULL);
	ft_strlcpy(memory, &s[start], len + 1);
	return (memory);
}
